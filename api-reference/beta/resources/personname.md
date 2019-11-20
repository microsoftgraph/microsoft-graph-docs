---
title: "personName resource type"
description: "personName resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personName resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents extended name information provided by the user or which they have associated with their account.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                     | Return Type                 | Description                                             |
|:-------------------------------------------|:----------------------------|:--------------------------------------------------------|
| [Get personName](../api/personname-get.md) | [personName](personname.md) | Read properties and relationships of personName object. |
| [Update](../api/personname-update.md)      | [personName](personname.md) | Update personName object.                               |
| [Delete](../api/personname-delete.md)      | None                        | Delete personName object.                               |

## Properties

| Property     | Type                              | Description |
|:-------------|:----------------------------------|:------------|
|displayName   |String                             | Provides an ordered rendering of firstName and lastName depending on the locale of the user or their device. |
|first         |String                             | First Name of the user.                                                                                      |
|initials      |String                             | Initials of the user.                                                                                        |
|languageTag   |String                             | Contains the name for the language (en-US, no-NB, en-AU) following IETF BCP47 format.                        |
|last          |String                             | Last Name of the user.                                                                                       |
|maiden        |String                             | Maiden Name of the user.                                                                                     |
|middle        |String                             | Middlie Name of the user.                                                                                    | 
|nickname      |String                             | Nickname of the user.                                                                                        |
|pronunciation |[yomiPersonName](yomipersonname.md)| Guidance on how to pronounce the users name.                                                                 |
|suffix        |String                             | Designators used after the users name (eg: PhD.)                                                             |
|title         |String                             | Honorifics used to prefix a users name (eg: Dr, Sir, Madam, Mrs.)                                            |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personName",
  "baseType": ""
}-->

```json
{
  "displayName": "String",
  "first": "String",
  "initials": "String",
  "languageTag": "String",
  "last": "String",
  "maiden": "String",
  "middle": "String",
  "nickname": "String",
  "pronunciation": {"@odata.type": "microsoft.graph.yomiPersonName"},
  "suffix": "String",
  "title": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personName resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->