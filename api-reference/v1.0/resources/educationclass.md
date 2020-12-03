---
title: "educationClass resource type"
description: "Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.  "
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationClass resource type

Namespace: microsoft.graph

Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.  


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get educationClass](../api/educationclass-get.md) | [educationClass](educationclass.md) |Read properties and relationships of an **educationClass** object.|
|[Add member](../api/educationclass-post-members.md) |[educationUser](educationuser.md)| Add a new **educationUser** for the class by posting to the members navigation property.|
|[List members](../api/educationclass-list-members.md) |[educationUser](educationuser.md) collection| Get an **educationUser** object collection.|
|[Remove student](../api/educationclass-delete-members.md) |[educationUser](educationuser.md)| Remove an **educationUser** from the class through the members navigation property.|
|[List schools](../api/educationclass-list-schools.md) |[educationSchool](educationschool.md) collection| Get an **educationSchool** object collection.|
|[Add teacher](../api/educationclass-post-teachers.md) |[educationUser](educationuser.md)| Add a new **educationUser** for the class by posting to the teachers navigation property.|
|[List teachers](../api/educationclass-list-teachers.md) |[educationUser](educationuser.md) collection| Get a list of teachers for the class.|
|[Remove teacher](../api/educationclass-delete-teachers.md) |[educationUser](educationuser.md)| Remove an **educationUser** from the class through the teachers navigation property.|
|[Get group](../api/educationclass-get-group.md) |[group](group.md)| Get the Microsoft 365 **group** that corresponds to this **educationClass**.|
|[Update](../api/educationclass-update.md) | [educationClass](educationclass.md)	|Update **educationClass** object. |
|[Delete](../api/educationclass-delete.md) | None |Delete **educationClass** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id| String| Unique identifier for the class.|
|description|String| Description of the class.|
|displayName|String| Name of the class.|
|mailNickname|String| Mail name for sending email to all members, if this is enabled. |
|createdBy|[identitySet](identityset.md)| Entity who created the class |
|classCode|String| Class code used by the school to identify the class.|
|externalId|String| ID of the class from the syncing system. |
|externalName|String|Name of the class in the syncing system.|
|externalSource|educationExternalSource| How this class was created. The possible values are: `sis`, `manual`, `unknownFutureValue`.|
|term|[educationTerm](educationterm.md)|Term for this class.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|members|[educationUser](../resources/educationuser.md) collection| All users in the class. Nullable.|
|schools|[educationSchool](../resources/educationschool.md) collection| All schools that this class is associated with. Nullable.|
|teachers|[educationUser](../resources/educationuser.md) collection|  All teachers in the class. Nullable.|
|group|[group](../resources/group.md)| The directory group corresponding to this class.|

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.educationClass"
}-->

```json
{
  "id": "String",
  "description": "String",
  "classCode": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "displayName": "String",
  "externalId": "String",
  "externalName": "String",
  "externalSource": "string",
  "mailNickname": "String",
  "term": {"@odata.type": "microsoft.graph.educationTerm"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationClass resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

