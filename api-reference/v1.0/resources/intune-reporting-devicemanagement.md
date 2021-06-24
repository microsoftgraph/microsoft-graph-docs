---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-reporting-devicemanagement-get.md)|[deviceManagement](../resources/intune-reporting-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-reporting-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-reporting-devicemanagement-update.md)|[deviceManagement](../resources/intune-reporting-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-reporting-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reports|[deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md)|Reports singleton|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```




