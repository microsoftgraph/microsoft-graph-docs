---
title: "itemEmail resource type"
description: "itemEmail resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemEmail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about email addresses associated with the user.

## Methods

| Method                                   | Return Type               | Description                                                      |
|:-----------------------------------------|:--------------------------|:-----------------------------------------------------------------|
| [Get](../api/itememail-get.md)           | [itemEmail](itememail.md) | Read properties and relationships of an **itemEmail** object.    |
| [Update](../api/itememail-update.md)     | [itemEmail](itememail.md) | Update an **itemEmail** object.                                  |
| [Delete](../api/itememail-delete.md)     | None                      | Delete an **itemEmail** object.                                  |

## Properties

| Property             | Type                                   | Description                                                                                                                                                                                    |
|:---------------------|:---------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|address               |String                                  | The email address itself.                                                                                                                                                                      |
|allowedAudiences      |string                                  | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](identityset.md)           | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                          |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|displayName           |String                                  | The name or label a user has associated with a particular email address.                                                                                                                       |
|id                    |String                                  | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)       | Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)           | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                          |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|source                |[personDataSource](personDataSource.md) |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
|type                  |string                                  | Possible values are: `unknown`, `work`, `personal`, `main`, `other`.                                                                                                                           |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemEmail",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id" 
}-->

```json
{
  "address": "irenak@contoso.com",
  "allowedAudiences": "organization",
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "AAD",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "displayName": "Primary Email Address",
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
  "source": null,
  "type": "mobile"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemEmail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
