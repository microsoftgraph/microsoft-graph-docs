---
title: "deviceAppManagementTask resource type"
description: "A device app management task."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAppManagementTask resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A device app management task.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAppManagementTasks](../api/intune-partnerintegration-deviceappmanagementtask-list.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) collection|List properties and relationships of the [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) objects.|
|[Get deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-get.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Read properties and relationships of the [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[Create deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-create.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Create a new [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[Delete deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-delete.md)|None|Deletes a [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md).|
|[Update deviceAppManagementTask](../api/intune-partnerintegration-deviceappmanagementtask-update.md)|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|Update the properties of a [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) object.|
|[updateStatus action](../api/intune-partnerintegration-deviceappmanagementtask-updatestatus.md)|None|Set the task's status and attach a note.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key.|
|displayName|String|The name.|
|description|String|The description.|
|createdDateTime|DateTimeOffset|The created date.|
|dueDateTime|DateTimeOffset|The due date.|
|category|[deviceAppManagementTaskCategory](../resources/intune-partnerintegration-deviceappmanagementtaskcategory.md)|The category. Possible values are: `unknown`, `advancedThreatProtection`.|
|priority|[deviceAppManagementTaskPriority](../resources/intune-partnerintegration-deviceappmanagementtaskpriority.md)|The priority. Possible values are: `none`, `high`, `low`.|
|creator|String|The email address of the creator.|
|creatorNotes|String|Notes from the creator.|
|assignedTo|String|The name or email of the admin this task is assigned to.|
|status|[deviceAppManagementTaskStatus](../resources/intune-partnerintegration-deviceappmanagementtaskstatus.md)|The status. Possible values are: `unknown`, `pending`, `active`, `completed`, `rejected`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagementTask"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagementTask",
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
  "status": "String"
}
```




