# recurrencePattern resource type

The frequency of an event.


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|dayOfMonth|Int32|The day of the month that the event occurs on.|
|daysOfWeek|String collection|A collection of the days of the week that the event occurs on. Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|firstDayOfWeek|String|The day of the week  on which the recurrence starts. Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|index|String|The index of the week in which the recurrence occurs.: `First`, `Second`, `Third`, `Fourth`, `Last`.|
|interval|Int32|The number of units of a given recurrence type between occurrences.|
|month|Int32|The month that the event occurs on.  This is a number from 1 to 12.|
|type|String|The recurrence pattern type: `Daily`, `Weekly`, `AbsoluteMonthly`, `RelativeMonthly`, `AbsoluteYearly`, `RelativeYearly`.|

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recurrencepattern"
}-->

```json
{
  "dayOfMonth": 1024,
  "daysOfWeek": ["String"],
  "firstDayOfWeek": "String",
  "index": "String",
  "interval": 1024,
  "month": 1024,
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recurrencePattern resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->