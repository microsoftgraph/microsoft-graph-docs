---
title: "educationClass resource type"
description: "Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.  "
localization_priority: Normal
author: "mlafleur"
ms.prod: "education"
doc_type: resourcePageType
---

# educationClass resource type

Namespace: microsoft.graph

Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                   | Return type                                                 | Description                                                                                          |
| :------------------------------------------------------- | :---------------------------------------------------------- | :--------------------------------------------------------------------------------------------------- |
| [List educationClasses](../api/educationclass-list.md)   | [educationClass](../resources/educationclass.md) collection | Get a list of the [educationClass](../resources/educationclass.md) objects and their properties.     |
| [Create educationClass](../api/educationclass-post.md) | [educationClass](../resources/educationclass.md)            | Create a new [educationClass](../resources/educationclass.md) object.                                |
| [Get educationClass](../api/educationclass-get.md)       | [educationClass](../resources/educationclass.md)            | Read the properties and relationships of an [educationClass](../resources/educationclass.md) object. |
| [Update educationClass](../api/educationclass-update.md) | [educationClass](../resources/educationclass.md)            | Update the properties of an [educationClass](../resources/educationclass.md) object.                 |
| [Delete educationClass](../api/educationclass-delete.md) | None                                                        | Delete an [educationClass](../resources/educationclass.md) object.                                  |
| [delta](../api/educationclass-delta.md)                  | [educationClass](../resources/educationclass.md) collection | Get incremental changes to the resource collection.                                                  |

## Properties

| Property             | Type                                           | Description                                                        |
| :------------------- | :--------------------------------------------- | :----------------------------------------------------------------- |
| id                   | String                                         | Object identifier. Inherited from [entity](../resources/entity.md). |
| displayName          | String                                         | Name of the class.                                                 |
| mailNickname         | String                                         | Mail name for sending email to all members, if this is enabled.    |
| description          | String                                         | Description of the class.                                          |
| createdBy            | [identitySet](../resources/identityset.md)     | Entity who created the class                                       |
| classCode            | String                                         | Class code used by the school to identify the class.               |
| externalName         | String                                         | Name of the class in the syncing system.                           |
| externalId           | String                                         | ID of the class from the syncing system.                           |
| externalSource       | educationExternalSource                        | How this class was created. Possible values are: `sis`, `manual`.  |
| externalSourceDetail | String                                         | The name of the external source this resources was generated from. |
| grade                | String                                         | Grade level of the class.                                          |
| term                 | [educationTerm](../resources/educationterm.md) | Term for this class.                                               |

## Relationships

| Relationship | Type                                                          | Description                                               |
| :----------- | :------------------------------------------------------------ | :-------------------------------------------------------- |
| group        | [group](../resources/group.md)                                | The underlying Microsoft 365 group object.                |
| members      | [educationUser](../resources/educationuser.md) collection     | All users in the class. Nullable.                         |
| schools      | [educationSchool](../resources/educationschool.md) collection | All schools that this class is associated with. Nullable. |
| teachers     | [educationUser](../resources/educationuser.md) collection     | All teachers in the class. Nullable.                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationClass",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationClass",
  "id": "String (identifier)",
  "displayName": "String",
  "mailNickname": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "classCode": "String",
  "externalName": "String",
  "externalId": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "grade": "String",
  "term": {
    "@odata.type": "microsoft.graph.educationTerm"
  }
}
```
