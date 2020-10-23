---
title: "mobileAppAssignment resource type"
description: "A class containing the properties used for Group Assignment of a Mobile App."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for Group Assignment of a Mobile App.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppAssignments](../api/intune-apps-mobileappassignment-list.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|List properties and relationships of the [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) objects.|
|[Get mobileAppAssignment](../api/intune-apps-mobileappassignment-get.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Read properties and relationships of the [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|
|[Create mobileAppAssignment](../api/intune-apps-mobileappassignment-create.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Create a new [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|
|[Delete mobileAppAssignment](../api/intune-apps-mobileappassignment-delete.md)|None|Deletes a [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md).|
|[Update mobileAppAssignment](../api/intune-apps-mobileappassignment-update.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Update the properties of a [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|intent|[installIntent](../resources/intune-shared-installintent.md)|The install intent defined by the admin. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group assignment defined by the admin.|
|settings|[mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)|The settings for target assignment defined by the admin.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignment",
  "id": "String (identifier)",
  "intent": "String",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "settings": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentSettings"
  }
}
```









