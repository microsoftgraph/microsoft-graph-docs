---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Thumbnail
---
# Thumbnail resource type

The **thumbnail** resource type represents a thumbnail for an image, video, document, or any item that has a bitmap representation.

## JSON representation

Here is a JSON representation of the **thumbnail** resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "content",
    "height",
    "width",
    "sourceItemId"
  ],
  "@odata.type": "microsoft.graph.thumbnail"
}-->

```json
{
  "height": 1024,
  "sourceItemId": "string",
  "url": "string",
  "width": 1024,
  "content": "stream"
}
```

## Properties

| Property     | Type   | Description
| :----------- | :----- | :----------------------------------------------------
| height       | Int32  | The height of the thumbnail, in pixels.
| sourceItemId | String | The unique identifier of the item that provided the thumbnail. This is only available when a folder thumbnail is requested.
| url          | String | The URL used to fetch the thumbnail content.
| width        | Int32  | The width of the thumbnail, in pixels.
| content      | Stream | The content stream for the thumbnail.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Thumbnail resource represents a single thumbnail for an item.",
  "section": "documentation",
  "tocPath": "Resources/Thumbnail"
} -->
