---
title: "List groupPolicyMigrationReports"
description: "List properties and relationships of the groupPolicyMigrationReport objects."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List groupPolicyMigrationReports

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/groupPolicyMigrationReports
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/groupPolicyMigrationReports
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 805

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.groupPolicyMigrationReport",
      "id": "60663fa8-3fa8-6066-a83f-6660a83f6660",
      "groupPolicyObjectId": "ca1c97af-97af-ca1c-af97-1ccaaf971cca",
      "displayName": "Display Name value",
      "ouDistinguishedName": "Ou Distinguished Name value",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
      "groupPolicyCreatedDateTime": "2016-12-31T23:58:14.0676812-08:00",
      "groupPolicyLastModifiedDateTime": "2017-01-01T00:02:51.2241017-08:00",
      "migrationReadiness": "partial",
      "targetedInActiveDirectory": true,
      "totalSettingsCount": 2,
      "supportedSettingsCount": 6,
      "supportedSettingsPercent": 8
    }
  ]
}
```




