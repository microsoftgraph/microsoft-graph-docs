---
title: "educationAssignmentDefaults resource type"
description: "Specifies class-level defaults respected by new assignments created in the class"
author: "dipakboyed"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# educationAssignmentDefaults resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies class-level defaults respected by new assignments created in the class. Callers can continue to specify custom values on each assignment creation if they do not want the default behaviors.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get educationAssignmentDefaults](../api/educationassignmentdefaults-get.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Read the properties and relationships of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|
|[Update educationAssignmentDefaults](../api/educationassignmentdefaults-update.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Update the properties of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedStudentAction|educationAddedStudentAction|Class-level default behavior for handling students who are added after the assignment is published. Possible values are: `none`, `assignIfOpen`.|
|addToCalendarAction| educationAddToCalendarOptions|Optional field to control the asfor adding assignments to students' and teachers' calendars when the assignment is published. Possible values are: `studentsAndPublisher`, `studentsAndTeamOwners`, `none`. Default value is `none`.|
|dueTime|TimeOfDay|Class-level default value for due time field. Default value is `23:59:00`.|
|notificationChannelUrl|String|Default Teams channel to which notifications will be sent. Default value is `null`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignmentDefaults",
  "openType": false
}
-->
``` json
{
  "addedStudentAction": "none",
  "addToCalendarAction": "none",
  "dueTime": "23:59:00",
  "notificationChannelUrl": "https://graph.microsoft.com/beta/teams('id')/channels('id')"
}
```

