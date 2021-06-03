---
title: "managedEBookAssignment resource type"
description: "Contains properties used to assign a eBook to a group."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedEBookAssignment resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget"
  },
  "installIntent": "String"
}
```




