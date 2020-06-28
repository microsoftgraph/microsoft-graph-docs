---
title: "personWebsite resource type"
description: "personWebsite resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personWebsite resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about websites associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods

<<<<<<< HEAD
| Method                                                         | Return Type                       | Description                                                          |
|:---------------------------------------------------------------|:----------------------------------|:---------------------------------------------------------------------|
| [Get personWebsite](../api/personwebsite-get.md)               | [personWebsite](personwebsite.md) | Read the properties and relationships of a **personWebsite** object. |
| [Update personWebsite](../api/personwebsite-update.md)         | [personWebsite](personwebsite.md) | Update a **personWebsite** object.                                   |
| [Delete personWebsite](../api/personwebsite-delete.md)         | None                              | Delete a **personWebsite** object.                                   |

## Properties

| Property     | Type              | Description                                                                                   |
|:-------------|:------------------|:----------------------------------------------------------------------------------------------|
|categories    |String collection  | Contains categories a user has associated with the website (for example, personal, recipes).  |
|description   |String             | Contains a description of the website.                                                        |
|displayName   |String             | Contains a friendly name for the website.                                                     |
|webUrl        |String             | Contains a link to the website itself.                                                        |
=======
| Method                                                         | Return Type                       | Description                                                                    |
|:---------------------------------------------------------------|:----------------------------------|:-------------------------------------------------------------------------------|
| [Get personWebsite](../api/personwebsite-get.md)               | [personWebsite](personwebsite.md) | Read the properties and relationships of a **personWebsite** object.           |
| [Update personWebsite](../api/personwebsite-update.md)         | [personWebsite](personwebsite.md) | Update a **personWebsite** object.                                             |
| [Delete personWebsite](../api/personwebsite-delete.md)         | None                              | Delete a **personWebsite** object.                                             |

## Properties

| Property             | Type                                   | Description                                                                                                                                                                                    |
|:---------------------|:---------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                  | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|categories            |String collection                       | Contains categories a user has associated with the website (for example, personal, recipes).                                                                                                   |
|createdBy             |[identitySet](identityset.md)           | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                          |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description           |String                                  | Contains a description of the website.                                                                                                                                                         |
|displayName           |String                                  | Contains a friendly name for the website.                                                                                                                                                      |
|id                    |String                                  | Read-only.                                                                                                                                                                                     | 
|inference             |[inferenceData](inferencedata.md)       | Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)           | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                          |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|source                |[personDataSource](personDataSource.md) |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
|webUrl                |String                                  | Contains a link to the website itself.                                              |
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personWebsite",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
<<<<<<< HEAD
  "allowedAudiences": "string",
  "inference": {"@odata.type": "microsoft.graph.inferenceData"},
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "categories": ["String"],
  "description": "String",
  "displayName": "String",
  "webUrl": "String"
=======
  "allowedAudiences": "organization",
  "categories": [
    {"sports", "personal"}
  ],
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "AAD",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "description": "Football club in the English Premier League",
  "displayName": "Chelsea FC",
  "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
  "inference": null,
  "lastModifiedBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "source": null, 
  "webUrl": "https://www.chelseafc.com"
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personWebsite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
