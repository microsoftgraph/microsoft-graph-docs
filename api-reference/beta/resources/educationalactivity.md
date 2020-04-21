---
title: "educationalActivity resource type"
description: "educationalActivity resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# educationalActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities.

Inherits metadata properties from [itemFacet](itemfacet.md).

## Methods

| Method                                                       | Return Type                                   | Description                                                      |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get educationalActivity](../api/educationalactivity-get.md) | [educationalActivity](educationalactivity.md) | Read properties and relationships of educationalActivity object. |
| [Update](../api/educationalactivity-update.md)               | [educationalActivity](educationalactivity.md) | Update educationalActivity object.                               |
| [Delete](../api/educationalactivity-delete.md)               | None                                          | Delete educationalActivity object.                               |

## Properties

| Property             | Type                                                      | Description                                                                                                                                                                                     |
|:---------------------|:----------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                                                     | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                    |
|completionMonthYear   |Date                                                       | The month and year the user graduated or completed the activity.                                                                                                                                |
|createdBy             |[identitySet](identityset.md)                              | When the entity was originally created.                                                                                                                                                         |
|createdDateTime       |DateTimeOffset                                             | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|endMonthYear          |Date                                                       | The month and year the user completed the educational activity referenced.                                                                                                                      |
|id                    |String                                                     | Read-only.                                                                                                                                                                                      |
|inference             |[inferenceData](inferencedata.md)                          | Contains inference detail if the entity is inferred.                                                                                                                                            |
|institution           |[institutionData](institutiondata.md)                      | Contains details of the institution studied at.                                                                                                                                                 |
|lastModifiedBy        |[identitySet](identityset.md)                              | Identifier of the partner or user who last modified the entity.                                                                                                                                 |
|lastModifiedDateTime  |DateTimeOffset                                             | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|program               |[educationalActivityDetail](educationalactivitydetail.md)  |Contains extended information about the program or course.                                                                                                                                       |
|source                |[personDataSource](personDataSource.md)                    | Identifies the source of the data (UserProvided, Profile, Admin, LinkedIn etc.)                                                                                                                 |
|startMonthYear        |Date                                                       |The month and year the user commenced the activity referenced.                                                                                                                                   |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationalActivity",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"

}-->

```json
{
  "completionMonthYear": "20-05-2012",
  "endMonthYear": "20-05-2012",
  "institution": {
  "description": "Leading educational institute for consulting and IT training",
  "displayName": "Microsoft University",
  "location": {
    "type": "Business",
    "postOfficeBox": null,
    "street": "1 Microsoft Way",
    "city": "Redmond",
    "state": "WA",
    "countryOrRegion": "United States",
    "postalCode": "98052"
  },
  "webUrl": "www.microsoftuniversity.com"
  },
  "program": {
    "abbreviation": "MBA",
    "activities": "Varsity Soccer",
    "awards": null,
    "description": "Strategy and Implementation focus.",
    "displayName": "Master of IT Consulting",
    "fieldsOfStudy": "Strategy, Consulting",
    "grade": "3.9",
    "notes": null,
    "webUrl": "www.microsoftuniversity.com/master-of-it-consulting"
  },
  "startMonthYear": "01-08-2010"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationalActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->