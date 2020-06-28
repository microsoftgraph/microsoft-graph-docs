---
title: "webAccount resource type"
description: "webAccount resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# webAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents web accounts the user has indicated they use or has added to their user [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                                | Return Type                 | Description                                                       |
|:------------------------------------------------------|:----------------------------|:------------------------------------------------------------------|
| [Get webAccount](../api/webaccount-get.md)            | [webAccount](webaccount.md) | Read the properties and relationships of a **webAccount** object. |
| [Update webAccount](../api/webaccount-update.md)      | [webAccount](webaccount.md) | Update a **webAccount** object.                                   |
| [Delete webAccount](../api/webaccount-delete.md)      | None                        | Delete a **webAccount** object.                                   |

## Properties

<<<<<<< HEAD
| Property     | Type                                      | Description                                                                                    |
|:-------------|:------------------------------------------|:-----------------------------------------------------------------------------------------------|
|description   |String                                     | Contains the description the user has provided for the account on the service being referenced.|
|service       |[serviceInformation](serviceinformation.md)| Contains basic detail about the service that is being associated.                              |
|statusMessage |String                                     | Contains a status message from the cloud service if provided or synchronized.                  |
|userId        |String                                     | The user name  displayed for the webaccount.                                                   |
|webUrl        |String                                     | Contains a link to the user's profile on the cloud service if one exists.                      |
=======
| Property             | Type                                      | Description                                                                                                                                                                                     |
|:---------------------|:------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                     | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                    |
|createdBy             |[identitySet](identityset.md)              | When the entity was originally created.                                                                                                                                                         |
|createdDateTime       |DateTimeOffset                             |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
|description           |String                                     | Contains the description the user has provided for the account on the service being referenced.                                                                                                 |
|id                    |String                                     | Read-only.                                                                                                                                                                                      | 
|inference             |[inferenceData](inferencedata.md)          | Contains inference detail if the entity is inferred.                                                                                                                                            |
|lastModifiedBy        |[identitySet](identityset.md)              | Identifier of the partner or user who last modified the entity.                                                                                                                                 |
|lastModifiedDateTime  |DateTimeOffset                             | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|service               |[serviceInformation](serviceinformation.md)| Contains basic detail about the service that is being associated.                                                                                                                               |
|source                |[personDataSource](persondataource.md)     |Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                  |
|statusMessage         |String                                     | Contains a status message from the cloud service if provided or synchronized.                                                                                                                   |
|userId                |String                                     | The user name  displayed for the webaccount.                                                                                                                                                    |
|webUrl                |String                                     | Contains a link to the user's profile on the cloud service if one exists.                                                                                                                       |
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c

## Relationships

None 

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.webAccount",
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
        "displayName": "UPA",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "description": "Skype for Life",
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
  "service": {
    "name": "Skype",
    "webUrl": "http://www.skype.com"
  },
  "source": null,
  "statusMessage": "Hello World!",
  "userId": "irena.koren",
  "webUrl": "https://www.skype.com/irena.koren"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "webAccount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
