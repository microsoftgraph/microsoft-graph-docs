---
title: "workPosition resource type"
description: "workPosition resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# workPosition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about work positions associated with a user's [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                                      | Return Type                     | Description                                                         |
|:------------------------------------------------------------|:--------------------------------|:--------------------------------------------------------------------|
| [Get workPosition](../api/workposition-get.md)              | [workPosition](workposition.md) | Read the properties and relationships of a **workPosition** object. |
| [Update workPosition](../api/workposition-update.md)        | [workPosition](workposition.md) | Update a **workPosition** object.                                   |
| [Delete workPosition](../api/workposition-delete.md)        | None                            | Delete a **workPosition** object.                                   |

## Properties

<<<<<<< HEAD
| Property             | Type                                | Description                                                                                                |
|:---------------------|:------------------------------------|:-----------------------------------------------------------------------------------------------------------|
|categories            | String collection                   | Contains categories a user has associated with the position (for example, digital transformation, people). |
|detail                | [positionDetail](positiondetail.md) | Contains detail about the user's current and previous employment positions.                                |
=======
| Property             | Type                                        | Description                                                                                                                                                                                     |
|:---------------------|:--------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                       | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                    |
|categories            |String collection                            | Contains categories a user has associated with the position (for example, digital transformation, people).                                                                                      |
|colleagues            |Collection [relatedPerson](relatedperson.md) | Contains a collection of a users colleagues for the specified position.                                                                                                                         |
|createdBy             |[identitySet](identityset.md)                | When the entity was originally created.                                                                                                                                                         |
|createdDateTime       |DateTimeOffset                               | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|detail                |[positionDetail](positiondetail.md)          | Contains detail about the user's current and previous employment positions.                                                                                                                     |
|id                    |String                                       | Read-only.                                                                                                                                                                                      |
|inference             |[inferenceData](inferencedata.md)            | Contains inference detail if the entity is inferred.                                                                                                                                            |
|isCurrent             |Boolean                                      | Denotes if the position is current for the user.                                                                                                                                                |
|lastModifiedBy        |[identitySet](identityset.md)                | Identifier of the partner or user who last modified the entity.                                                                                                                                 |
|lastModifiedDateTime  |DateTimeOffset                               | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|manager               |[relatedPerson](relatedperson.md)            | Contains details of the users manager for the specified position.                                                                                                                               |
|source                |[personDataSource](persondatasource.md)      | Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workPosition",
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
  "detail": {"@odata.type": "microsoft.graph.positionDetail"}
=======
  "allowedAudiences": "organization",
  "categories": null,
  "colleagues": [],
   "createdBy": {
      "device": null,
      "user": null,
      "application": {
          "displayName": "AAD",
          "id": null
      }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "detail": {
      "description": null,
      "endMonthYear": null,
      "jobTitle": "Auditor",
      "startMonthYear": "2001-01-01",
      "summary": null,
      "company": {
          "displayName": "Contoso Ltd.",
          "pronunciation": null,
          "department": "Finance",
          "officeLocation": "12/1110",
          "webUrl": null,
          "address": {
              "type": "business",
              "postOfficeBox": null,
              "street": "30 Isabella St., Second Floor",
              "city": "Pittsburgh",
              "state": "PA",
              "countryOrRegion": "US",
              "postalCode": "15212"
          }
      }
  },
  "id": "1b9e024d-0df8-4b57-af2b-dae70db4f356",
  "inference": null,
  "isCurrent": "True",
  "lastModifiedBy": {
      "device": null,
      "user": null,
      "application": {
          "displayName": "AAD",
          "id": null
      }
  },
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "manager": null,
  "source": null
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workPosition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
