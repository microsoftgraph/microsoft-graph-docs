# recordOperation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The recordOperation type

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| bargeInAllowed                 | Boolean                     | If yes, ongoing media operations are cancelled.                                                                                                   |
| clientContext                  | String                      | The client context.                                                                                                                               |
| completionReason               | String                      | Possible values are: `operationCanceled`, `stopToneDetected`, `maxRecordDurationReached`, `initialSilenceTimeout`, `maxSilenceTimeout`, `playPromptFailed`, `playBeepFailed`, `mediaReceiveTimeout`, `unspecifiedError`. |
| createdDateTime                | DateTimeOffset              | The time when the recording was created.                                                                                                                                                  |
| id                             | String                      | The server operation id. Read-only. Server generated.                                                                                             |
| initialSilenceTimeoutInSeconds | Int32                       | Maximum initial silence allowed from the time we start the record operation before we timeout and fail the operation. If we are playing a prompt, then this timer starts after prompt finishes. |
| lastActionDateTime             | DateTimeOffset              | The time of the last action of the operation.                                                                                                                                                  |
| maxRecordDurationInSeconds     | Int32                       | The maximum record duration in seconds. |
| maxSilenceTimeoutInSeconds     | Int32                       | The maximum silence timeout in seconds. |
| playBeep                       | Boolean                     | Plays a beep after playing the prompt.|
| prompts                        | [prompt](prompt.md) collection | Collection of prompts to play (if any) before recording starts. Customers can choose to specify "playPrompt" action separately or specify as part of "record" - mostly all records are preceeded by a prompt |
| recordResourceLocation         | String                      | The location where the recording is located. |
| resultInfo                     | [resultInfo](resultinfo.md) | The result information.  Read-only. Server generated.                                                                                             |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. Server generated.                                                 |
| stopTones                      | String collection           | Stop tones specified to end recording. |
| streamWhileRecording           | Boolean                     | If set to true, a resource location will be provided as soon as the recording starts.                                                             |

## Relationships
None

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recordOperation"
}-->
```json
{
  "bargeInAllowed": true,
  "clientContext": "String",
  "completionReason": "operationCanceled | stopToneDetected | maxRecordDurationReached | initialSilenceTimeout | maxSilenceTimeout | playPromptFailed | playBeepFailed | mediaReceiveTimeout | unspecifiedError",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "initialSilenceTimeoutInSeconds": 1024,
  "lastActionDateTime": "String (timestamp)",
  "maxRecordDurationInSeconds": 1024,
  "maxSilenceTimeoutInSeconds": 1024,
  "playBeep": true,
  "prompts": [{"@odata.type": "#microsoft.graph.prompt"}],
  "recordResourceLocation": "String",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed",
  "stopTones": ["String"],
  "streamWhileRecording": true
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.recordOperation",
  "truncated": true
}-->
```json
{
  "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c",
  "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "recordResourceLocation": "https://resource.location/ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "resultInfo": {
    "code": "200",
    "subCode": "callTerminated"
  },
  "status": "completed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recordOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
