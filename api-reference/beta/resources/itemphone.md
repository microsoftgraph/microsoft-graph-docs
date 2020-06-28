---
title: "itemPhone resource type"
description: "itemPhone resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemPhone resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about phone numbers associated with a user in various services.

## Methods

| Method                                               | Return Type               | Description                                                       |
|:-----------------------------------------------------|:--------------------------|:------------------------------------------------------------------|
| [Get itemPhone](../api/itemphone-get.md)             | [itemPhone](itemphone.md) | Read the properties and relationships of an **itemPhone** object. |
| [Update itemPhone](../api/itemphone-update.md)       | [itemPhone](itemphone.md) | Update an **itemPhone** object.                                   |
| [Delete itemPhone](../api/itemphone-delete.md)       | None                      | Delete an **itemPhone** object.                                   |

## Properties

| Property             | Type                            | Description                                                                                                                     |
|:---------------------|:--------------------------------|:--------------------------------------------------------------------------------------------------------------------------------|
|displayName           |String                           | Contains a friendly name for the phone number.                                                                                  |
|number                |String                           | Contains the phone number.                                                                                                      |
|type                  |string                           | Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|
|allowedAudiences      |string                           | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](identityset.md)    | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id                    |String                           | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)| Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)    | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|source                |string                           |Contains the source where the phone is fetched from.                                                                                                                                            |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemPhone",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id" 
}-->

```json
{
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
  "displayName": "Main Phone",
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
  "number": "+1 484 4444 3553",
  "source": null,
  "type": "mobile"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemPhone resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
