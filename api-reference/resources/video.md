# video resource type

The **video** resource indicates an item is a video media file and provides details about the video.

## Properties

| Property | Type  | Description                               |
|:---------|:------|:------------------------------------------|
| bitrate  | Int32 | Bit rate of the video in bits per second. |
| duration | Int64 | Duration of the file in milliseconds.     |
| height   | Int32 | Height of the video, in pixels.           |
| width    | Int32 | Width of the video, in pixels.            |



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "video resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
