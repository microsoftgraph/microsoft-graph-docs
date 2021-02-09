---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Video
localization_priority: Normal
description: "The Video resource groups video-related data items into a single structure."
ms.prod: ""
doc_type: resourcePageType
---

# Video resource type

Namespace: microsoft.graph

The **Video** resource groups video-related data items into a single structure.

If a [**DriveItem**](driveitem.md) has a non-null **video** facet, the item represents a video file.
The properties of the **Video** resource are populated by extracting metadata from the file.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.video"
}-->

```json
{
  "audioBitsPerSample": 16,
  "audioChannels": 1,
  "audioFormat": "AAC",
  "audioSamplesPerSecond": 44100,
  "bitrate": 39101896,
  "duration": 8053,
  "fourCC": "H264",
  "frameRate": 239.877,
  "height": 1280,
  "width": 720
}
```

## Properties

| Property name             | Type   | Description
|:--------------------------|:-------|:----------------------------------------
| **audioBitsPerSample**    | Int32  | Number of audio bits per sample.
| **audioChannels**         | Int32  | Number of audio channels.
| **audioFormat**           | string | Name of the audio format (AAC, MP3, etc.).
| **audioSamplesPerSecond** | Int32  | Number of audio samples per second.
| **bitrate**               | Int32  | Bit rate of the video in bits per second.
| **duration**              | Int64  | Duration of the file in milliseconds.
| **fourCC**                | string | "Four character code" name of the video format.
| **frameRate**             | double | Frame rate of the video.
| **height**                | Int32  | Height of the video, in pixels.
| **width**                 | Int32  | Width of the video, in pixels.

[item-resource]: ../resources/driveitem.md

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The video facet provides information about the properties of a video file.",
  "keywords": "bitrate,duration,size,video",
  "section": "documentation",
  "tocPath": "Facets/Video"
} -->

