---
title: "vppTokenLicenseSummary resource type"
description: "License summary of a given app in a token."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# vppTokenLicenseSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




