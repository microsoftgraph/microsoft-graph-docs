---
author: MarcMroz
description: "The media resource contains metadata about the media (audio or video) drive item."
title: media resource type
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# media resouce type

Contains metadata about the media (audio or video) drive item.

It is available on the media property of [driveItem][item-resource] resources.


## Properties

| Property                 | Type                  | Description                                                                                                   |
| :----------------------- | :-------------------- | :------------------------------------------------------------------------------------------------------------ 
| **isTranscriptionShown** | Boolean               | If a file has a transcript, this setting controls if the closed captions / transcription for the media file should be shown to people during viewing. Read-Write.                                                    |
| **mediaSource**          | [mediaSource](mediaSource.md)         | Information about the source of media. Read-only.                                                             | 


## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.media"
}-->

```json
{
  "isTranscriptionShown" : true,
  "mediaSource": { "@odata.type": "microsoft.graph.mediaSource" }
}
```

## See also 

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

[item-resource]: ../resources/driveitem.md
[mediaSource]: mediaSource.md

<!-- {
  "type": "#page.annotation",
  "description": "The media resource type provides information about the media item.",
  "keywords": "mediaItem,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Media"
} -->
