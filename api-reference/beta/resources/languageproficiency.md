---
title: "languageProficiency resource type"
description: "languageProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# languageProficiency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about languages that a user has added to their [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

| Method                                                               | Return Type                                   | Description                                                                |
|:---------------------------------------------------------------------|:----------------------------------------------|:---------------------------------------------------------------------------|
| [Get languageProficiency](../api/languageproficiency-get.md)         | [languageProficiency](languageproficiency.md) | Read the properties and relationships of a **languageProficiency** object. |
| [Update languageProficiency](../api/languageproficiency-update.md)   | [languageProficiency](languageproficiency.md) | Update a **languageProficiency** object.                                   |
| [Delete languageProficiency](../api/languageproficiency-delete.md)   | None                                          | Delete a **languageProficiency** object.                                   |

## Properties

| Property             | Type                                        | Description                                                                                                                                                                                    |
|:---------------------|:--------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                       | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](identityset.md)                | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|displayName           |String                                       | Contains the long-form name for the language.                                                                                                                                                  |
|id                    |String                                       | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)            | Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)                | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|reading               |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |
|source                |[personDataSource](personDataSource.md)      |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
|spoken                |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |
|tag                   |String                                       | Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).                                                                                                                 |
|written               |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.languageProficiency",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
    "allowedAudiences": "contacts",
    "createdBy": {
        "device": null,
        "user": null,
        "application": {
            "displayName": "AAD",
            "id": null
        }
    },
    "createdDateTime": "2020-02-18T16:07:14Z",
    "displayName": "English (United States)",
    "id": "7a521b6f-3ab8-4b94-9099-7f8eb4447f8e",
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
    "reading": "advancedProfessional",
    "source": "LinkedIn",
    "spoken": "advancedProfessional",
    "tag": "en-US",
    "written": "advancedProfessional",
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "languageProficiency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
