# MediaStream resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The mediaStream type.

## Properties

| Property    | Type    | Description                                                                                                   |
| :---------- | :------ | :------------------------------------------------------------------------------------------------------------ |
| direction   | String  | The direction. The possible values are `inactive`, `sendOnly`, `receiveOnly` or `sendReceive`.                |
| label       | String  | The media stream label.                                                                                       |
| mediaType   | String  | The media type. The possible value are `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`.  |
| serverMuted | Boolean | If the media is muted by the server.                                                                          |
| sourceId    | Int64 | The source ID.                                                                                                  |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mediaStream"
}-->

```json
{
  "direction": "String",
  "label": "String",
  "mediaType": "String",
  "serverMuted": true,
  "sourceId": "String"
}
```

## Example

``` json
{
    "direction": "sendReceive",
    "label": "main-audio",
    "mediaType": "audio",
    "sourceId": 1024
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mediaStream resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
