---
title: "managedEBookAssignment resource type"
description: "Contains properties used to assign a eBook to a group."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# managedEBookAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used to assign a eBook to a group.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedEBookAssignments](../api/intune-books-managedebookassignment-list.md)|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md) collection|List properties and relationships of the [managedEBookAssignment](../resources/intune-books-managedebookassignment.md) objects.|
|[Get managedEBookAssignment](../api/intune-books-managedebookassignment-get.md)|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md)|Read properties and relationships of the [managedEBookAssignment](../resources/intune-books-managedebookassignment.md) object.|
|[Create managedEBookAssignment](../api/intune-books-managedebookassignment-create.md)|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md)|Create a new [managedEBookAssignment](../resources/intune-books-managedebookassignment.md) object.|
|[Delete managedEBookAssignment](../api/intune-books-managedebookassignment-delete.md)|None|Deletes a [managedEBookAssignment](../resources/intune-books-managedebookassignment.md).|
|[Update managedEBookAssignment](../api/intune-books-managedebookassignment-update.md)|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md)|Update the properties of a [managedEBookAssignment](../resources/intune-books-managedebookassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target for eBook.|
|installIntent|[installIntent](../resources/intune-shared-installintent.md)|The install intent for eBook. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedEBookAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedEBookAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "installIntent": "String"
}
```



