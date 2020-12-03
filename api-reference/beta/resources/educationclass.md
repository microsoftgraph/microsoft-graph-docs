---
title: "educationClass resource type"
description: "Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationClass resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a class within a school. The **educationClass** resource currently corresponds to a Microsoft 365 [group] and shares the same ID.
Students are regular members of the class, and Teachers are owners and have appropriate rights.

> [!IMPORTANT]
> For Microsoft 365 experiences to work correctly, teachers must be members of both the teachers and members collections.

## Methods

| Method                                                                  | Return Type                                    | Description                                                                               |
| :---------------------------------------------------------------------- | :--------------------------------------------- | :---------------------------------------------------------------------------------------- |
| [Get educationClass](../api/educationclass-get.md)                      | [educationClass]                               | Read properties and relationships of an **educationClass** object.                        |
| [Add member](../api/educationclass-post-members.md)                     | [educationUser]                                | Add a new **educationUser** for the class by posting to the members navigation property.  |
| [List members](../api/educationclass-list-members.md)                   | [educationUser] collection                     | Get an **educationUser** object collection.                                               |
| [Remove student](../api/educationclass-delete-members.md)               | [educationUser]                                | Remove an **educationUser** from the class through the members navigation property.       |
| [List schools](../api/educationclass-list-schools.md)                   | [educationSchool] collection                   | Get an **educationSchool** object collection.                                             |
| [Add teacher](../api/educationclass-post-teachers.md)                   | [educationUser]                                | Add a new **educationUser** for the class by posting to the teachers navigation property. |
| [List teachers](../api/educationclass-list-teachers.md)                 | [educationUser] collection                     | Get a list of teachers for the class.                                                     |
| [Remove teacher](../api/educationclass-delete-teachers.md)              | [educationUser]                                | Remove an **educationUser** from the class through the teachers navigation property.      |
| [Create educationAssignment](../api/educationclass-post-assignments.md) | [educationAssignment]                          | Create a new **educationAssignment** by posting to the assignments collection.            |
| [List assignments](../api/educationclass-list-assignments.md)           | [educationAssignment]collection                | Get an **educationAssignment** object collection.                                         |
| [Get group](../api/educationclass-get-group.md)                         | [group]                                        | Get the Microsoft 365 **group** that corresponds to this **educationClass**.              |
| [Create educationCategory](../api/educationclass-post-category.md)      | [educationCategory]                            | Create a new **educationCategory** for this class.                                        |
| [List categories](../api/educationclass-list-categories.md)             | [educationCategory] collection                 | Get a list of **educationCategory** objects belonging to this class.                      |
| [Update](../api/educationclass-update.md)                               | [educationClass]                               | Update **educationClass** object.                                                         |
| [Delete](../api/educationclass-delete.md)                               | None                                           | Delete **educationClass** object.                                                         |
| [Delta](../api/educationclass-delta.md)                                 | [educationClass](educationclass.md) collection | Get incremental changes for **educationClasses**                                          |

## Properties

| Property             | Type                                  | Description                                                                                                                                                          |
| :------------------- | :------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                   | String                                | Unique identifier for the class.                                                                                                                                     |
| classCode            | String                                | Class code used by the school to identify the class.                                                                                                                 |
| course               | [educationCourse](educationcourse.md) | Course information for the class                                                                                                                                     |
| createdBy            | [identitySet]                         | Entity who created the class                                                                                                                                         |
| description          | String                                | Description of the class.                                                                                                                                            |
| displayName          | String                                | Name of the class.                                                                                                                                                   |
| externalId           | String                                | ID of the class from the syncing system.                                                                                                                             |
| externalName         | String                                | Name of the class in the syncing system.                                                                                                                             |
| externalSource       | String                                | The type of external source this resource was generated from (automatically determined from `externalSourceDetail`). Possible values are: `sis`, `lms`, or `manual`. |
| externalSourceDetail | String                                | The name of the external source this resources was generated from.                                                                                                   |
| grade                | String                                | Grade level of the class.                                                                                                                                            |
| mailNickname         | String                                | Mail name for sending email to all members, if this is enabled.                                                                                                      |
| term                 | [educationTerm]                       | Term for the class.                                                                                                                                                  |

## Relationships

| Relationship | Type                             | Description                                               |
| :----------- | :------------------------------- | :-------------------------------------------------------- |
| assignments  | [educationAssignment] collection | All assignments associated with this class. Nullable.     |
| members      | [educationUser] collection       | All users in the class. Nullable.                         |
| schools      | [educationSchool] collection     | All schools that this class is associated with. Nullable. |
| teachers     | [educationUser] collection       | All teachers in the class. Nullable.                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationClass"
}-->

```json
{
  "classCode": "String",
  "course": { "@odata.type": "microsoft.graph.educationCourse" },
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "externalName": "String",
  "externalSource": "string",
  "grade": "string",
  "id": "String (identifier)",
  "mailNickname": "String",
  "term": { "@odata.type": "microsoft.graph.educationTerm" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.educationClass",
  "description": "educationUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: Resource educationClass has documented navigation properties, but we thought it was a complex type!",
    "Resource educationClass has documented navigation properties, but we thought it was a complex type!"
  ]

}-->

[educationclass]: educationclass.md
[educationuser]: educationuser.md
[educationassignment]: educationassignment.md
[educationcourse]: educationcourse.md
[educationcategory]: educationcategory.md
[educationschool]: educationschool.md
[educationterm]: educationterm.md
[identityset]: identityset.md
[group]: group.md


