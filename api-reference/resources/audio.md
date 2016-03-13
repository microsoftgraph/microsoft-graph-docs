# audio resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|album|string||
|albumArtist|string||
|artist|string||
|bitrate|int64||
|composers|string||
|copyright|string||
|disc|int16||
|discCount|int16||
|duration|int64||
|genre|string||
|hasDrm|boolean||
|isVariableBitrate|boolean||
|title|string||
|track|int32||
|trackCount|int32||
|year|int32||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audio"
}-->

```json
{
  "album": "string",
  "albumArtist": "string",
  "artist": "string",
  "bitrate": 1024,
  "composers": "string",
  "copyright": "string",
  "disc": 1024,
  "discCount": 1024,
  "duration": 1024,
  "genre": "string",
  "hasDrm": true,
  "isVariableBitrate": true,
  "title": "string",
  "track": 1024,
  "trackCount": 1024,
  "year": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "audio resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->