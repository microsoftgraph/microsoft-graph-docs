---
title: "intuneBrand resource type"
description: "intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# intuneBrand resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Company/organization name that is displayed to end users.|
|themeColor|[rgbColor](../resources/intune-shared-rgbcolor.md)|Primary theme color used in the Company Portal applications and web portal.|
|showLogo|Boolean|Boolean that represents whether the administrator-supplied logo images are shown or not shown.|
|lightBackgroundLogo|[mimeContent](../resources/intune-shared-mimecontent.md)|Logo image displayed in Company Portal apps which have a light background behind the logo.|
|darkBackgroundLogo|[mimeContent](../resources/intune-shared-mimecontent.md)|Logo image displayed in Company Portal apps which have a dark background behind the logo.|
|showNameNextToLogo|Boolean|Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.|
|landingPageCustomizedImage|[mimeContent](../resources/intune-shared-mimecontent.md)|Customized image displayed in Company Portal app landing page|
|showDisplayNameNextToLogo|Boolean|Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.|
|roleScopeTagIds|String collection|List of scope tags assigned to the default branding profile|
|contactITName|String|Name of the person/organization responsible for IT support.|
|contactITPhoneNumber|String|Phone number of the person/organization responsible for IT support.|
|contactITEmailAddress|String|Email address of the person/organization responsible for IT support.|
|contactITNotes|String|Text comments regarding the person/organization responsible for IT support.|
|onlineSupportSiteUrl|String|URL to the company/organization’s IT helpdesk site.|
|onlineSupportSiteName|String|Display name of the company/organization’s IT helpdesk site.|
|privacyUrl|String|URL to the company/organization’s privacy policy.|
|customPrivacyMessage|String|The custom privacy message used to explain what the organization can’t see or do on managed devices.|
|customCantSeePrivacyMessage|String|The custom privacy message used to explain what the organization can’t see or do on managed devices.|
|customCanSeePrivacyMessage|String|The custom privacy message used to explain what the organization can see and do on managed devices.|
|isRemoveDeviceDisabled|Boolean|Boolean that represents whether the adminsistrator has disabled the 'Remove Device' action on corporate owned devices.|
|isFactoryResetDisabled|Boolean|Boolean that represents whether the adminsistrator has disabled the 'Factory Reset' action on corporate owned devices.|
|companyPortalBlockedActions|[companyPortalBlockedAction](../resources/intune-shared-companyportalblockedaction.md) collection|Collection of blocked actions on the company portal as per platform and device ownership types.|
|showAzureADEnterpriseApps|Boolean|Boolean that indicates if AzureAD Enterprise Apps will be shown in Company Portal|
|showOfficeWebApps|Boolean|Boolean that indicates if Office WebApps will be shown in Company Portal|
|sendDeviceOwnershipChangePushNotification|Boolean|Boolean that indicates if a push notification is sent to users when their device ownership type changes from personal to corporate|
|enrollmentAvailability|[enrollmentAvailabilityOptions](../resources/intune-shared-enrollmentavailabilityoptions.md)|Customized device enrollment flow displayed to the end user . Possible values are: `availableWithPrompts`, `availableWithoutPrompts`, `unavailable`.|
|disableClientTelemetry|Boolean|Applies to telemetry sent from all clients to the Intune service. When disabled, all proactive troubleshooting and issue warnings within the client are turned off, and telemetry settings appear inactive or hidden to the device user.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.intuneBrand"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.intuneBrand",
  "displayName": "String",
  "themeColor": {
    "@odata.type": "microsoft.graph.rgbColor",
    "r": 1024,
    "g": 1024,
    "b": 1024
  },
  "showLogo": true,
  "lightBackgroundLogo": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "darkBackgroundLogo": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "showNameNextToLogo": true,
  "landingPageCustomizedImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "showDisplayNameNextToLogo": true,
  "roleScopeTagIds": [
    "String"
  ],
  "contactITName": "String",
  "contactITPhoneNumber": "String",
  "contactITEmailAddress": "String",
  "contactITNotes": "String",
  "onlineSupportSiteUrl": "String",
  "onlineSupportSiteName": "String",
  "privacyUrl": "String",
  "customPrivacyMessage": "String",
  "customCantSeePrivacyMessage": "String",
  "customCanSeePrivacyMessage": "String",
  "isRemoveDeviceDisabled": true,
  "isFactoryResetDisabled": true,
  "companyPortalBlockedActions": [
    {
      "@odata.type": "microsoft.graph.companyPortalBlockedAction",
      "platform": "String",
      "ownerType": "String",
      "action": "String"
    }
  ],
  "showAzureADEnterpriseApps": true,
  "showOfficeWebApps": true,
  "sendDeviceOwnershipChangePushNotification": true,
  "enrollmentAvailability": "String",
  "disableClientTelemetry": true
}
```




