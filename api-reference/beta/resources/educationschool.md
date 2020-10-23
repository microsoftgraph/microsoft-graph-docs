---
title: "educationSchool resource type"
description: "A school. The **educationSchool** resource currently corresponds to an administrativeUnit resource and shares the same ID.  "
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationSchool resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A school. The **educationSchool** resource currently corresponds to an [administrativeUnit](administrativeunit.md) resource and shares the same ID.

This resource is a subtype of [educationOrganization](educationorganization.md).

## Methods

| Method                                                                     | Return Type                                      | Description                                                                                 |
| :------------------------------------------------------------------------- | :----------------------------------------------- | :------------------------------------------------------------------------------------------ |
| [Get](../api/educationschool-get.md)                                       | [educationSchool](educationschool.md)            | Read properties and relationships of an **educationSchool** object.                         |
| [Add class](../api/educationschool-post-classes.md)                        | [educationClass](educationclass.md)              | Add a new **educationClass** for the school by posting to the classes navigation property.  |
| [List classes](../api/educationschool-list-classes.md)                     | [educationClass](educationclass.md) collection   | Get the **educationClass** object collection.                                               |
| [Remove class](../api/educationschool-delete-classes.md)                   | [educationClass](educationclass.md)              | Remove an **educationClass** from the school through the classes navigation property.       |
| [Add user](../api/educationschool-post-users.md)                           | [educationUser](educationuser.md)                | Add a new **educationUser** for the school by posting to the **users** navigation property. |
| [List users](../api/educationschool-list-users.md)                         | [educationUser](educationuser.md) collection     | Get the **educationUser** object collection.                                                |
| [Remove user](../api/educationschool-delete-users.md)                      | [educationUser](educationuser.md)                | Remove an **educationUser** from the school through the **users** navigation property.      |
| [Get administrativeUnit](../api/educationschool-get-administrativeunit.md) | [administrativeUnit](administrativeunit.md)      | Get the **administrativeUnit** that corresponds to this **educationSchool**.                |
| [Update](../api/educationschool-update.md)                                 | [educationSchool](educationschool.md)            | Update an **educationSchool** object.                                                       |
| [Delete](../api/educationschool-delete.md)                                 | None                                             | Delete an **educationSchool** object.                                                       |
| [Delta](../api/educationschool-delta.md)                                   | [educationSchool](educationschool.md) collection | Get incremental changes for **educationSchools**                                            |

## Properties

| Property             | Type                                  | Description                                                                                                                                                          |
| :------------------- | :------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                   | String                                | GUID of this school.                                                                                                                                                 |
| address              | [physicalAddress](physicaladdress.md) | Address of the school.                                                                                                                                               |
| createdBy            | [identitySet](identityset.md)         | Entity who created the school.                                                                                                                                       |
| description          | String                                | Description of the school.                                                                                                                                           |
| displayName          | String                                | Display name of the school.                                                                                                                                          |
| externalId           | String                                | ID of school in syncing system.                                                                                                                                      |
| externalPrincipalId  | String                                | ID of principal in syncing system.                                                                                                                                   |
| externalSource       | String                                | The type of external source this resource was generated from (automatically determined from `externalSourceDetail`). Possible values are: `sis`, `lms`, or `manual`. |
| externalSourceDetail | String                                | The name of the external source this resources was generated from.                                                                                                   |
| highestGrade         | String                                | Highest grade taught.                                                                                                                                                |
| lowestGrade          | String                                | Lowest grade taught.                                                                                                                                                 |
| phone                | String                                | Phone number of school.                                                                                                                                              |
| principalEmail       | String                                | Email address of the principal.                                                                                                                                      |
| principalName        | String                                | Name of the principal.                                                                                                                                               |
| schoolNumber         | String                                | School Number.                                                                                                                                                       |

## Relationships

| Relationship | Type                                           | Description                             |
| :----------- | :--------------------------------------------- | :-------------------------------------- |
| classes      | [educationClass](educationclass.md) collection | Classes taught at the school. Nullable. |
| users        | [educationUser](educationuser.md) collection   | Users in the school. Nullable.          |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
"blockType": "resource",
"keyProperty": "id",
"optionalProperties": [

],
"@odata.type": "microsoft.graph.educationSchool"
}-->

```json
{
  "address": { "@odata.type": "microsoft.graph.physicalAddress" },
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "externalPrincipalId": "String",
  "externalSource": "string",
  "highestGrade": "String",
  "id": "String (identifier)",
  "lowestGrade": "String",
  "phone": "String",
  "principalEmail": "String",
  "principalName": "String",
  "schoolNumber": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSchool resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: Resource educationSchool has documented navigation properties, but we thought it was a complex type!"
  ]
}-->


