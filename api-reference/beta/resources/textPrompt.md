# TextPrompt resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The textPrompt type.

## Properties

| Property    | Type    | Description                                                                                                                                                                                                                                              |
| :---------- | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| culture     | String  | The language of the text. Possible values are: `enUs`. The default is `enUS`                                                                                                                                                                             |
| emphasize   | Boolean | Emphasize the text. The default is `false`                                                                                                                                                                                                               |
| loop        | Int32   | The loop count. 0 value indicates to loop infinitely. The default value is `1`.                                                                                                                                                                          |
| sayAs       | String  | The possible values are  `unknown`, `YearMonthDay`, `MonthDayYear`, `DayMonthYear`, `YearMonth`, `MonthYear`, `MonthDay`, `DayMonth`, `Day`, `Month`, `Year`, `Cardinal`, `Ordinal`, `Letters`, `Time12`, `Time24`, `Telephone`, `Name`, `PhoneticName`. |
| text        | String  | The text to play.                                                                                                                                                                                                                                        |
| voiceGender | String  | The voice gender. The possible values are `male` or `female`. Default is `female`.                                                                                                                                                                       |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.textPrompt"
}-->
```json
{
  "culture": "enUs",
  "emphasize": true,
  "loop": 1024,
  "sayAs": "unknown | yearMonthDay | monthDayYear | dayMonthYear | yearMonth | monthYear | monthDay | dayMonth | day | month | year | cardinal | ordinal | letters | time12 | time24 | telephone | name | phoneticName",
  "text": "String",
  "voiceGender": "female | male"
}
```

## Example - Play silence for 5 seconds

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.textPrompt",
  "truncated": true
}-->
```json
{
  "culture": "enUs",
  "text": "Please enter your PIN",
  "voiceGender": "female"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "textPrompt resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
