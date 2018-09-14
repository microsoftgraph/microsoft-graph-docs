# RecordingInfo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| initiatedBy | [participantInfo](participantInfo.md) |  |
| status | String | Possible values are: `recordingCapable`, `notRecording`, `startedRecording`. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recordingInfo"
}-->

```json
{
  "initiatedBy": {"@odata.type": "microsoft.graph.participantInfo"},
  "status": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recordingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
