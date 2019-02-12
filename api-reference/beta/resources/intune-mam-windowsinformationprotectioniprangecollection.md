---
title: "windowsInformationProtectionIPRangeCollection resource type"
description: "Windows Information Protection IP Range Collection"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# windowsInformationProtectionIPRangeCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Information Protection IP Range Collection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name|
|ranges|[ipRange](../resources/intune-shared-iprange.md) collection|Collection of ip ranges|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionIPRangeCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionIPRangeCollection",
  "displayName": "String",
  "ranges": [
    {
      "@odata.type": "microsoft.graph.iPv6Range",
      "lowerAddress": "String",
      "upperAddress": "String"
    }
  ]
}
```




