---
title: "skillProficiency resource type"
description: "skillProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# skillProficiency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about skills associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods
 
<<<<<<< HEAD
| Method                                                         | Return Type                             | Description                                                             |
|:---------------------------------------------------------------|:----------------------------------------|:------------------------------------------------------------------------|
| [Get skillProficiency](../api/skillproficiency-get.md)         | [skillProficiency](skillproficiency.md) | Read the properties and relationships of a **skillProficiency** object. |
| [Update skillProficiency](../api/skillproficiency-update.md)   | [skillProficiency](skillproficiency.md) | Update a **skillProficiency** object.                                   |
| [Delete skillProficiency](../api/skillproficiency-delete.md)   | None                                    | Delete a **skillProficiency** object.                                   |

## Properties

| Property     | Type             | Description                                                                                                                        |
|:-------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------|
|categories    |String collection | Contains categories a user has associated with the skill (for example, personal, professional, hobby).                             |
|displayName   |String            | Contains a friendly name for the skill.                                                                                            |
|proficiency   |string            | Possible values are: `elementary`, `limitedWorking`, `generalProfessional`, `advancedProfessional`, `expert`, `unknownFutureValue`.|
|webUrl        |String            | Contains a link to an information source about the skill.                                                                          |
=======
| Method                                                                  | Return Type                             | Description                                                               |
|:------------------------------------------------------------------------|:----------------------------------------|:--------------------------------------------------------------------------|
| [Get skillProficiency](../api/skillproficiency-get.md)                  | [skillProficiency](skillproficiency.md) | Read the properties and relationships of a **skillProficiency** object.   |
| [Update skillProficiency](../api/skillproficiency-update.md)            | [skillProficiency](skillproficiency.md) | Update a **skillProficiency** object.                                     |
| [Delete skillProficiency](../api/skillproficiency-delete.md)            | None                                    | Delete a **skillProficiency** object.                                     |

## Properties

| Property             | Type             | Description                                                                                                                                                                                                              |
|:---------------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                     | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                    |
|categories            |String collection                          | Contains categories a user has associated with the skill (for example, personal, professional, hobby).                                                                                          |
|collaborationTags     |String collection                          | Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: `askMeAbout`, `ableToMentor`, `wantsToLearn`, `wantsToImprove`.                |
|createdBy             |[identitySet](identityset.md)              | When the entity was originally created.                                                                                                                                                         |
|createdDateTime       |DateTimeOffset                             |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
|displayName           |String                                     | Contains a friendly name for the skill.                                                                                                                                                         |      
|id                    |String                                     | Read-only.                                                                                                                                                                                      | 
|inference             |[inferenceData](inferencedata.md)          | Contains inference detail if the entity is inferred.                                                                                                                                            |
|lastModifiedBy        |[identitySet](identityset.md)              | Identifier of the partner or user who last modified the entity.                                                                                                                                 |
|lastModifiedDateTime  |DateTimeOffset                             | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|proficiency           |string                                     | Possible values are: `elementary`, `limitedWorking`, `generalProfessional`, `advancedProfessional`, `expert`, `unknownFutureValue`.                                                             |
|source                |[personDataSource](persondataource.md)     |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                  |
|webUrl                |String                                     | Contains a link to an information source about the skill.                                                                                                                                       |
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.skillProficiency",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
  "allowedAudiences": "organization",
  "categories": [
    "professional"
  ],
  "collaborationTags": [
    "askMeAbout"
  ],
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "displayName": "Artificial Intelligence",
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
  "proficiency": "advancedProfessional",
  "source": null,
  "webUrl": "https://www.microsoft.com/aischool"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "skillProficiency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
