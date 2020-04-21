---
title: "projectParticipation resource type"
description: "projectParticipation resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# projectParticipation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about projects associated with a user.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                                                  | Return Type                                     | Description                                                                       |
|:------------------------------------------------------------------------|:------------------------------------------------|:----------------------------------------------------------------------------------|
| [Get projectParticipation](../api/projectparticipation-get.md)          | [projectParticipation](projectparticipation.md) | Read the properties and relationships of a **projectParticipation** object.       |
| [Update projectParticipation](../api/projectparticipation-update.md)    | [projectParticipation](projectparticipation.md) | Update a **projectParticipation** object.                                         |
| [Delete projectParticipation](../api/projectparticipation-delete.md)    | None.                                           | Delete a **projectParticipation** object.                                         |

## Properties

| Property             | Type                                        | Description                                                                                                                                                                                    |
|:---------------------|:--------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                       | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|categories            | String collection                           | Contains categories a user has associated with the project (for example, digital transformation, oil rig).                                                                                     |
|client                |[companyDetail](companydetail.md)            | Contains detailed information about the client the project was for.                                                                                                                            |
|colleagues            |[relatedPerson](relatedperson.md) collection | Lists people that also worked on the project.                                                                                                                                                  |
|createdBy             |[identitySet](identityset.md)                | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|detail                |[positionDetail](positiondetail.md)          | Contains detail about the user's role on the project.                                                                                                                                          |
|displayName           |String                                       |Contains a friendly name for the project.                                                                                                                                                       |
|id                    |String                                       | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)            | Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)                | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|source                |[personDataSource](personDataSource.md)      |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
|sponsors              |[relatedPerson](relatedperson.md) collection | The Person or people who sponsored the project.                                                                                                                                                |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.projectParticipation",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
    "allowedAudiences": "everyone",
    "categories": [],
    "client": null,
    "colleagues": [],
    "createdBy": {
        "device": null,
        "user": null,
        "application": {
            "displayName": "UPA",
            "id": null
        }
    },
    "createdDateTime": "2020-02-18T16:07:14Z",
    "detail": null,
    "displayName": "Corporate Marketing Guidelines Review",
    "id": "f7cb9d97-149a-4113-a67c-5ea8b08b7ec4",
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
    "sponsors": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "projectParticipation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
