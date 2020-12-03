---
author: "ananmishr"
ms.date: 09/10/2017
title: Audio
localization_priority: Normal
ms.prod: "microsoft-teams"
description: "The Audio resource groups audio-related properties on an item into a single structure."
doc_type: resourcePageType
---
# Audio facet

Namespace: microsoft.graph

The **Audio** resource groups audio-related properties on an item into a single structure.

If a [**DriveItem**](driveitem.md) has a non-null **audio** facet, the item represents an audio file.
The properties of the **Audio** resource are populated by extracting metadata from the file. 

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.audio" } -->
```json
{
  "album": "string",
  "albumArtist": "string",
  "artist": "string",
  "bitrate": 128,
  "composers": "string",
  "copyright": "string",
  "disc": 0,
  "discCount": 0,
  "duration": 567,
  "genre": "string",
  "hasDrm": false,
  "isVariableBitrate": false,
  "title": "string",
  "track": 1,
  "trackCount": 16,
  "year": 2014
}
```

## Properties

| Property name         | Type    | Description                                                          |
|:----------------------|:--------|:---------------------------------------------------------------------|
| **album**             | string  | The title of the album for this audio file.                          |
| **albumArtist**       | string  | The artist named on the album for the audio file.                    |
| **artist**            | string  | The performing artist for the audio file.                            |
| **bitrate**           | Int64   | Bitrate expressed in kbps.                                           |
| **composers**         | string  | The name of the composer of the audio file.                          |
| **copyright**         | string  | Copyright information for the audio file.                            |
| **disc**              | Int16   | The number of the disc this audio file came from.                    |
| **discCount**         | Int16   | The total number of discs in this album.                             |
| **duration**          | Int64   | Duration of the audio file, expressed in milliseconds                |
| **genre**             | string  | The genre of this audio file.                                        |
| **hasDrm**            | boolean | Indicates if the file is protected with digital rights management.   |
| **isVariableBitrate** | boolean | Indicates if the file is encoded with a variable bitrate.            |
| **title**             | string  | The title of the audio file.                                         |
| **track**             | Int32   | The number of the track on the original disc for this audio file.    |
| **trackCount**        | Int32   | The total number of tracks on the original disc for this audio file. |
| **year**              | Int32   | The year the audio file was recorded.                                |

[item-resource]: ../resources/driveitem.md

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The audio facet provides information about music or audio metadata.",
  "keywords": "music,audio,metadata,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Audio"
} -->

