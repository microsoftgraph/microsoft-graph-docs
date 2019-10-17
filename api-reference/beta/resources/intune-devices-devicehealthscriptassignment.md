---
title: "deviceHealthScriptAssignment resource type"
description: "Contains properties used to assign a device management script to a group."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceHealthScriptAssignment resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign a device management script to a group.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script assignment entity|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The Azure Active Directory group we are targeting the script to|
|runRemediationScript|Boolean|Determine whether we want to run detection script only or run both detection script and remediation script|
|runSchedule|[runSchedule](../resources/intune-devices-runschedule.md)|The Azure Active Directory group we are targeting the script to|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceHealthScriptAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "runRemediationScript": true,
  "runSchedule": {
      "@odata.type": "microsoft.graph.runSchedule"
  }
}
```



