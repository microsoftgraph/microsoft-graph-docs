---
title: "profileCardProperty resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardProperty resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get profileCardProperty](../api/profilecardproperty-get.md) | [profileCardProperty](profilecardproperty.md) | Read properties and relationships of profileCardProperty object. |
| [Update](../api/profilecardproperty-update.md) | [profileCardProperty](profilecardproperty.md) | Update profileCardProperty object. |
| [Delete](../api/profilecardproperty-delete.md) | None | Delete profileCardProperty object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|annotations|[profileCardAnnotation](profilecardannotation.md) collection||
|directoryPropertyName|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileCardProperty",
  "baseType": ""
}-->

```json
{
  "annotations": [{"@odata.type": "microsoft.graph.profileCardAnnotation"}],
  "directoryPropertyName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profileCardProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->