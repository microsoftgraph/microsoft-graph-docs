---
title: "Deploy an expedited security update using the Windows Update for Business deployment service"
description: "With the Windows Update for Business deployment service, you can deploy expedited Windows security updates to devices in an Azure AD tenant in case an emergency arises and you need to immediately deploy a security update."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: conceptualPageType
---

# Deploy an expedited security update using the Windows Update for Business deployment service

With the Windows Update for Business deployment service, you can deploy Windows updates to devices in an Azure AD tenant. Today, the deployment service supports [deployments](windowsupdates-deployments.md) of Windows 10 feature updates and expedited security updates. This topic focuses on deployments of expedited security updates. For information on deploying feature updates, see [Deploy a feature update](windowsupdates-deploy-update.md).

Expediting a security update overrides Windows Update for Business deferral policies so that the update is installed as quickly as possible. It can be useful when critical security events arise and you need to deploy the latest updates more rapidly than normal. However, while it can help to achieve compliance targets against a specific security update, it is not designed to be used every month. Instead, consider using [compliance deadlines for updates](https://docs.microsoft.com/windows/deployment/update/wufb-compliancedeadlines).

When you deploy an expedited security update to a device, Windows Update offers the latest applicable update to the device if it has not yet received the update with the specified release date. For example, if you deploy the Windows 10 security update released on April 13, 2021 to a device that does not currently have the update, the device receives an expedited update. If the device already has the specified update or newer, it does not receive an expedited update.

Expedited security updates also have the following characteristics:

* The update starts right away rather than waiting for the next regular update scan, which occurs once every 22 hours by default.
* The update downloads and installs as quickly as possible.
* The update process overrides configured device policy settings, such as days until the device is forced to restart. After the expedited update is installed, the device returns to the current policy settings.

## Prerequisites

* Devices meet the [prerequisites for the deployment service](windowsupdates-concept-overview.md#prerequisites).
* Devices have installed the update described in [KB4023057 - Update for Windows 10 Update Service components](https://support.microsoft.com/topic/kb4023057-update-for-windows-10-update-service-components-fccad0ca-dc10-2e46-9ed1-7e392450fb3a) (or newer).

## Step 1: (Optional) Get a list of expeditable updates

You can query the deployment service catalog to get a list of updates that can be expedited to devices as content in a deployment.

Security updates are represented by the [qualityUpdateCatalogEntry](/graph/api/resources/windowsupdates-qualityupdatecatalogentry) type, with a **qualityUpdateClassification** of `security`. All Windows 10 quality updates that are classified as security updates can be expedited and are tagged with the **isExpeditable** property set to `true` to identify them.

Below is an example of querying for all Windows 10 security updates that can be deployed as expedited updates by the deployment service. Microsoft recommends to only show the three most current updates, so the example includes `$top=3`.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$top=3&$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$orderby=releaseDateTime desc
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "bd9554dc-2737-4e3c-b794-fa2b8b3f4a30",
            "displayName": "MM/DD/YYYY - YYYY.MM B Security Updates for Windows 10",
            "releaseDateTime": "String (timestamp)",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "68860630-c2d0-4dd2-8c4b-9b9737ee5081",
            "displayName": "MM/DD/YYYY - YYYY.MM B Security Updates for Windows 10",
            "releaseDateTime": "String (timestamp)",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "aa336b13-db33-4d94-89ea-90e43e4ad30b",
            "displayName": "MM/DD/YYYY - YYYY.MM B Security Updates for Windows 10",
            "releaseDateTime": "String (timestamp)",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security"
        }
    ]
}
```

## Step 2: Create a deployment

> [!NOTE]
> The first time you deploy an expedited security update in your tenant, you may experience up to a one-day delay while the service is configured for your organization. This delay does not apply to subsequent deployments or deployments of feature updates, and will be addressed in a future update.

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. For quality updates, the content is specified using a target compliance date. When a deployment is created, a deployment audience is automatically created as a relationship.

When you deploy an expedited security update to a device, Windows Update offers an update that brings the device above the minimum compliance level specified. Depending on when each device scans and updates, some devices may receive newer updates (e.g. if there is a newer security update than the one corresponding to the desired minimum compliance level), but all devices meet the specified security update compliance standard. This behavior of offering the latest applicable update, indicated by the property **equivalentContent** being set to the default value `latestSecurity`, helps keep devices as secure as possible and prevents a device from receiving an expedited update followed by another regular update just days later.

You can configure the device restart grace period using the property **daysUntilForcedReboot** in the [user experience settings](/graph/api/resources/windowsupdates-userexperiencesettings) of the deployment. The grace period sets the amount of time after installation that the user can control the timing of when the device restarts. If the device has not restarted by the time the grace period expires, it restarts automatically.

Below is an example of creating a deployment for an expedited quality update. The targeted devices are specified in the next step.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "microsoft.graph.windowsUpdates.expeditedQualityUpdateReference",
        "releaseDate": "YYYY-MM-DD"
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.windowsDeploymentSettings",
        "userExperience": {
            "daysUntilForcedReboot": 2
        }
    }
}
```

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "id": "b5171742-1742-b517-4217-17b5421717b5",
    "state": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
        "value": "offering",
        "reasons": [
            {
                "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason",
                "value": "offeringByRequest"
            }
        ],
        "requestedValue": "none",
        "effectiveSinceDate": "String (timestamp)"
    },
    "content": {
        "@odata.type": "microsoft.graph.windowsUpdates.expeditedQualityUpdateReference",
        "releaseDate": "YYYY-MM-DDT00:00:00Z",
        "classification": "security",
        "equivalentContent": "latestSecurity"
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.windowsDeploymentSettings",
        "userExperience": {
            "daysUntilForcedReboot": 2
        },
        "monitoring": null,
        "rollout": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Step 3: Assign devices to the deployment audience

After a deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). Devices can be assigned directly, or via [updatable asset groups](/graph/api/resources/windowsupdates-updatableassetgroup). Once the deployment audience is successfully updated, Windows Update starts offering the update to the relevant devices according to the deployment settings.

Devices are automatically registered with the service when added to the members or exclusions collections of a deployment audience (i.e. an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it does not already exist).

Below is an example of adding updatable asset groups and Azure AD devices as members of the deployment audience, while also excluding a specific Azure AD device.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments/{deploymentId}/audience/updateAudience
Content-type: application/json

{
    "addMembers": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
            "id": "String (identifier)"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        }
    ],
    "addExclusions": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        }
    ]
}
```

### Response

```http
HTTP/1.1 202 Accepted
```

## During a deployment

While a deployment is in progress, you can pause the deployment by updating its **state**, as well as update its audience members and exclusions.

## After a deployment

After all devices assigned to a deployment audience have been initially offered the update, it is possible that not all devices have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, it continues to make sure that Windows Update is offering the update to the assigned devices whenever they reconnect.
