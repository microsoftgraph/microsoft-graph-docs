---
title: "educationAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# educationAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List educationAssignments](../api/educationassignment-list.md)|[educationAssignment](../resources/educationassignment.md) collection|Get a list of the [educationAssignment](../resources/educationassignment.md) objects and their properties.|
|[Create educationAssignment](../api/educationassignment-create.md)|[educationAssignment](../resources/educationassignment.md)|Create a new [educationAssignment](../resources/educationassignment.md) object.|
|[Get educationAssignment](../api/educationassignment-get.md)|[educationAssignment](../resources/educationassignment.md)|Read the properties and relationships of an [educationAssignment](../resources/educationassignment.md) object.|
|[Update educationAssignment](../api/educationassignment-update.md)|[educationAssignment](../resources/educationassignment.md)|Update the properties of an [educationAssignment](../resources/educationassignment.md) object.|
|[Delete educationAssignment](../api/educationassignment-delete.md)|None|Deletes an [educationAssignment](../resources/educationassignment.md) object.|
|[getResourcesFolderUrl](../api/educationassignment-getresourcesfolderurl.md)|String|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedStudentAction|educationAddedStudentAction|**TODO: Add Description**. Possible values are: `none`, `assignIfOpen`, `unknownFutureValue`.|
|allowLateSubmissions|Boolean|**TODO: Add Description**|
|allowStudentsToAddResourcesToSubmission|Boolean|**TODO: Add Description**|
|assignDateTime|DateTimeOffset|**TODO: Add Description**|
|assignedDateTime|DateTimeOffset|**TODO: Add Description**|
|assignTo|[educationAssignmentRecipient](../resources/educationassignmentrecipient.md)|**TODO: Add Description**|
|classId|String|**TODO: Add Description**|
|closeDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|dueDateTime|DateTimeOffset|**TODO: Add Description**|
|grading|[educationAssignmentGradeType](../resources/educationassignmentgradetype.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|instructions|[educationItemBody](../resources/educationitembody.md)|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|notificationChannelUrl|String|**TODO: Add Description**|
|status|educationAssignmentStatus|**TODO: Add Description**. Possible values are: `draft`, `published`, `assigned`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[educationCategory](../resources/educationcategory.md) collection|**TODO: Add Description**|
|resources|[educationAssignmentResource](../resources/educationassignmentresource.md) collection|**TODO: Add Description**|
|rubric|[educationRubric](../resources/educationrubric.md)|**TODO: Add Description**|
|submissions|[educationSubmission](../resources/educationsubmission.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAssignment",
  "id": "String (identifier)",
  "classId": "String",
  "displayName": "String",
  "instructions": {
    "@odata.type": "microsoft.graph.educationItemBody"
  },
  "closeDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "assignDateTime": "String (timestamp)",
  "assignedDateTime": "String (timestamp)",
  "grading": {
    "@odata.type": "microsoft.graph.educationAssignmentGradeType"
  },
  "assignTo": {
    "@odata.type": "microsoft.graph.educationAssignmentRecipient"
  },
  "allowLateSubmissions": "Boolean",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "allowStudentsToAddResourcesToSubmission": "Boolean",
  "status": "String",
  "notificationChannelUrl": "String",
  "addedStudentAction": "String"
}
```

