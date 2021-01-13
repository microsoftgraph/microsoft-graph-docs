---
title: "managedDeviceModelsAndManufacturers resource type"
description: "Models and Manufactures meatadata for managed devices in the account"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedDeviceModelsAndManufacturers resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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




