---
title: "deviceConfigurationAssignment resource type"
description: "The device configuration assignment entity assigns an AAD group to a specific device configuration."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceConfigurationAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The device configuration assignment entity assigns an AAD group to a specific device configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationAssignments](../api/intune-deviceconfig-deviceconfigurationassignment-list.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|List properties and relationships of the [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) objects.|
|[Get deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-get.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Read properties and relationships of the [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|
|[Create deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-create.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Create a new [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|
|[Delete deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-delete.md)|None|Deletes a [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md).|
|[Update deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-update.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Update the properties of a [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the assignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target for the device configuration.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",
    "collectionId": "String"
  }
}
```




