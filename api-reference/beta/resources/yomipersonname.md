---
title: "yomiPersonName resource type"
description: "yomiPersonName resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# yomiPersonName resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a mechanism for a user to store information about how to pronounce a name for non-native speakers of the language that the [personName](personname.md) resource is represented in.

## Properties

| Property     | Type        | Description                                             |
|:-------------|:------------|:--------------------------------------------------------|
|displayName   |String       | Composite of first and last name pronunciation guides.  |
|first         |String       | Pronunciation guide for the first name of the user.     |
|last          |String       | Pronunciation guide for the last name of the user.      |
|maiden        |String       | Pronunciation guide for the maiden name of the user.    |
|middle        |String       | Pronunciation guide for the middle name of the user.    |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.yomiPersonName"
}
-->

``` json

{
  "displayName": "String",
  "first": "String",
  "maiden": "String",
  "middle": "String",
  "last": "String"
}
```


