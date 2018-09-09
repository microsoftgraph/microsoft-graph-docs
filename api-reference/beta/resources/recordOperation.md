# RecordOperation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The recordOperation type

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | The client context.                                                                                                                               |
| completionReason               | String                      | Possible values are: `operationCanceled`, `stopToneDetected`, `maxRecordDurationReached`, `initialSilenceTimeout`, `maxSilenceTimeout`, `playPromptFailed`, `playBeepFailed`, `mediaReceiveTimeout`, `unspecifiedError`. |
| createdDateTime                | DateTimeOffset              |                                                                                                                                                   |
| id                             | String                      | The server operation id. Read Only.                                                                                                               |
| lastActionDateTime             | DateTimeOffset              |                                                                                                                                                   |
| length                         | Int32                       | The length of recording in seconds. Read Only.                                                                                                    |
| recordResourceLocation         | String                      |                                                                                                                                                   |
| resultInfo                     | [resultInfo](resultInfo.md) | The result information.  Read Only.                                                                                                               |
| status                         | String                      | Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`. Read Only.                                                                   |

## Relationships
None

## Json Representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recordOperation"
}-->

``` json
{
  "clientContext": "String",
  "completionReason": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "length": 1024,
  "recordResourceLocation": "String",
  "resultInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "status": "String"
}
```

## Example

``` json
{
    "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
    "clientContext": "A904FBD5A31041E881E861877A3DE3CD",
    "status": "completed",
    "length": 900,
    "resultInfo" : {
        "code": "200",
        "subCode": "callTerminated"
    }
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
