# Video resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
  "bitrate": 1024,
  "duration": 1024,
  "height": 1024,
  "width": 1024
}
```

## Properties

| Property | Type  | Description                               |
|:---------|:------|:------------------------------------------|
| bitrate  | Int32 | Bit rate of the video in bits per second. |
| duration | Int64 | Duration of the file in milliseconds.     |
| height   | Int32 | Height of the video, in pixels.           |
| width    | Int32 | Width of the video, in pixels.            |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).





<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "video resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
