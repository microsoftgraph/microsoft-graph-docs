---
title: "imageInfo resource type"
description: "A complex type for representing the **attribution** property in the visualInfo part of the activity object."
localization_priority: Normal
ms.prod: "project-rome"
doc_type: resourcePageType
author: "ailae"
---

# imageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type for representing the **attribution** property in the [visualInfo](../resources/projectrome-visualinfo.md) part of the [activity](../resources/projectrome-activity.md) object.

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|iconUrl | String | Optional; URI that points to an icon which represents the application used to generate the activity|
|alternateText | String | Optional; alt-text accessible content for the image|
|addImageQuery | Boolean | Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image|

## JSON Representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "iconUrl",
    "alternateText",
    "addImageQuery"
  ],
  "@odata.type": "microsoft.graph.imageInfo"
}-->

```json
{
    "@odata.type": "microsoft.graph.imageInfo",
    "iconUrl": "String (URL)",
    "alternateText": "String",
    "addImageQuery": "boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "imageinfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


