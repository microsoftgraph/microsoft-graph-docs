---
title: "unmanagedDeviceDiscoveryTask resource type"
description: "This task derived type represents a list of unmanaged devices discovered in the network."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# unmanagedDeviceDiscoveryTask resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This task derived type represents a list of unmanaged devices discovered in the network.


Inherits from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List unmanagedDeviceDiscoveryTasks](../api/intune-partnerintegration-unmanageddevicediscoverytask-list.md)|[unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) collection|List properties and relationships of the [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) objects.|
|[Get unmanagedDeviceDiscoveryTask](../api/intune-partnerintegration-unmanageddevicediscoverytask-get.md)|[unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md)|Read properties and relationships of the [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) object.|
|[Create unmanagedDeviceDiscoveryTask](../api/intune-partnerintegration-unmanageddevicediscoverytask-create.md)|[unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md)|Create a new [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) object.|
|[Delete unmanagedDeviceDiscoveryTask](../api/intune-partnerintegration-unmanageddevicediscoverytask-delete.md)|None|Deletes a [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md).|
|[Update unmanagedDeviceDiscoveryTask](../api/intune-partnerintegration-unmanageddevicediscoverytask-update.md)|[unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md)|Update the properties of a [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|displayName|String|The name. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|description|String|The description. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|createdDateTime|DateTimeOffset|The created date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|dueDateTime|DateTimeOffset|The due date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|category|[deviceAppManagementTaskCategory](../resources/intune-partnerintegration-deviceappmanagementtaskcategory.md)|The category. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `advancedThreatProtection`.|
|priority|[deviceAppManagementTaskPriority](../resources/intune-partnerintegration-deviceappmanagementtaskpriority.md)|The priority. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `none`, `high`, `low`.|
|creator|String|The email address of the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|creatorNotes|String|Notes from the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|assignedTo|String|The name or email of the admin this task is assigned to. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|status|[deviceAppManagementTaskStatus](../resources/intune-partnerintegration-deviceappmanagementtaskstatus.md)|The status. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `pending`, `active`, `completed`, `rejected`.|
|unmanagedDevices|[unmanagedDevice](../resources/intune-partnerintegration-unmanageddevice.md) collection|Unmanaged devices discovered in the network.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unmanagedDeviceDiscoveryTask"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unmanagedDeviceDiscoveryTask",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "category": "String",
  "priority": "String",
  "creator": "String",
  "creatorNotes": "String",
  "assignedTo": "String",
  "status": "String",
  "unmanagedDevices": [
    {
      "@odata.type": "microsoft.graph.unmanagedDevice",
      "os": "String",
      "osVersion": "String",
      "ipAddress": "String",
      "deviceName": "String",
      "macAddress": "String",
      "domain": "String",
      "manufacturer": "String",
      "model": "String",
      "location": "String",
      "lastLoggedOnUser": "String",
      "lastSeenDateTime": "String (timestamp)"
    }
  ]
}
```




