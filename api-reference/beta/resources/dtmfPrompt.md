# DtmfPrompt resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Properties

| Property    | Type    | Description                                                                                                                                                                                              |
| :---------- | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| digits      | String  | The digits to plays. The possible values are `0` - `9`, `A` - `D`, `*`, `#` or `,`. Comma (`,`) is used to insert delay of 1 second. Multiple commas can be used in series to introduce longer delays. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.dtmfPrompt"
}-->
```json
{
  "digits": "String"
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.dtmfPrompt"
}-->
```json
{
  "digits": ",,1234,,,56789"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "dtmfPrompt resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
