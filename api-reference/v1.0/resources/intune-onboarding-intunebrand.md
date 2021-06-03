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

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Company/organization name that is displayed to end users.|
|themeColor|[rgbColor](../resources/intune-onboarding-rgbcolor.md)|Primary theme color used in the Company Portal applications and web portal.|
|showLogo|Boolean|Boolean that represents whether the administrator-supplied logo images are shown or not shown.|
|lightBackgroundLogo|[mimeContent](../resources/intune-shared-mimecontent.md)|Logo image displayed in Company Portal apps which have a light background behind the logo.|
|darkBackgroundLogo|[mimeContent](../resources/intune-shared-mimecontent.md)|Logo image displayed in Company Portal apps which have a dark background behind the logo.|
|showNameNextToLogo|Boolean|Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.|
|showDisplayNameNextToLogo|Boolean|Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.|
|contactITName|String|Name of the person/organization responsible for IT support.|
|contactITPhoneNumber|String|Phone number of the person/organization responsible for IT support.|
|contactITEmailAddress|String|Email address of the person/organization responsible for IT support.|
|contactITNotes|String|Text comments regarding the person/organization responsible for IT support.|
|onlineSupportSiteUrl|String|URL to the company/organization’s IT helpdesk site.|
|onlineSupportSiteName|String|Display name of the company/organization’s IT helpdesk site.|
|privacyUrl|String|URL to the company/organization’s privacy policy.|

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
  "showDisplayNameNextToLogo": true,
  "contactITName": "String",
  "contactITPhoneNumber": "String",
  "contactITEmailAddress": "String",
  "contactITNotes": "String",
  "onlineSupportSiteUrl": "String",
  "onlineSupportSiteName": "String",
  "privacyUrl": "String"
}
```




