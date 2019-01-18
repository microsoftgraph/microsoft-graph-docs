---
title: "vppTokenLicenseSummary resource type"
description: "License summary of a given app in a token."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# vppTokenLicenseSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

License summary of a given app in a token.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|vppTokenId|String|Identifier of the VPP token.|
|appleId|String|The Apple Id associated with the given Apple Volume Purchase Program Token.|
|organizationName|String|The organization associated with the Apple Volume Purchase Program Token.|
|availableLicenseCount|Int32|The number of VPP licenses available.|
|usedLicenseCount|Int32|The number of VPP licenses in use.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vppTokenLicenseSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vppTokenLicenseSummary",
  "vppTokenId": "String",
  "appleId": "String",
  "organizationName": "String",
  "availableLicenseCount": 1024,
  "usedLicenseCount": 1024
}
```





