---
title: "personInterest resource type"
description: "personInterest resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personInterest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides detailed information about interests the user has associated with themselves in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                                    | Return Type                         | Description                                                           |
|:----------------------------------------------------------|:------------------------------------|:----------------------------------------------------------------------|
| [Get personInterest](../api/personinterest-get.md)        | [personInterest](personinterest.md) | Read the properties and relationships of a **personInterest** object. |
| [Update personInterest](../api/personinterest-update.md)  | [personInterest](personinterest.md) | Update a **personInterest** object.                                   |
| [Delete personInterest](../api/personinterest-delete.md)  | None                                | Delete a **personInterest** object.                                   |

## Properties

| Property     | Type             | Description                                                                                    |
|:-------------|:-----------------|:-----------------------------------------------------------------------------------------------|
|categories    |String collection | Contains categories a user has associated with the interest (for example, personal, recipies). |
|description   |String            | Contains a description of the interest.                                                        |
|displayName   |String            | Contains a friendly name for the interest.                                                     |
|webUrl        |String            | Contains a link to a web page or resource about the interest.                                  |
|allowedAudiences      |string                           | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](identityset.md)    | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id                    |String                           | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)| Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)    | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personInterest",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
  "allowedAudiences": "organization",
  "categories": ["Personal", "Sports"],
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "displayName": "European Football",
  "description": "European football, or football is one of the world's most popular sports.",
  "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
  "inference": null,
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "lastModifiedBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "source": "SharePoint UPA",
  "webUrl": "https://www.uefa.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personInterest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
