---
title: "iosHomeScreenFolder resource type"
description: "A folder containing pages of apps on the Home Screen"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# iosHomeScreenFolder resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A folder containing pages of apps on the Home Screen

Inherits from [iosHomeScreenItem](../resources/intune-deviceconfig-ioshomescreenitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the app Inherited from [iosHomeScreenItem](../resources/intune-deviceconfig-ioshomescreenitem.md)|
|pages|[iosHomeScreenFolderPage](../resources/intune-deviceconfig-ioshomescreenfolderpage.md) collection|Pages of Home Screen Layout Icons which must be Application Type. This collection can contain a maximum of 500 elements.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosHomeScreenFolder"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenFolder",
  "displayName": "String",
  "pages": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenFolderPage",
      "displayName": "String",
      "apps": [
        {
          "@odata.type": "microsoft.graph.iosHomeScreenApp",
          "displayName": "String",
          "bundleID": "String"
        }
      ]
    }
  ]
}
```



