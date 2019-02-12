---
title: "managedDeviceModelsAndManufacturers resource type"
description: "Models and Manufactures meatadata for managed devices in the account"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# managedDeviceModelsAndManufacturers resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Models and Manufactures meatadata for managed devices in the account

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceModels|String collection|List of Models for managed devices in the account|
|deviceManufacturers|String collection|List of Manufactures for managed devices in the account|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceModelsAndManufacturers"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceModelsAndManufacturers",
  "deviceModels": [
    "String"
  ],
  "deviceManufacturers": [
    "String"
  ]
}
```




