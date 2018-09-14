# SilencePrompt resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The silencePrompt type.

## Properties

| Property    | Type    | Description                                                              |
| :---------- | :------ | :----------------------------------------------------------------------- |
| duration    | Int64   | The silence duration in milliseconds.                                    |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.silencePrompt"
}-->
```json
{
  "duration": 1024
}
```

## Example - Play silence for 5 seconds.

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.silencePrompt"
}-->
```json
{
  "duration": 5000
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "silencePrompt resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
