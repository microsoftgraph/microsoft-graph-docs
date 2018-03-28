# recurrenceRange resource type

Describes a date range over which a recurring [event](event.md) repeats. 

You can specify the date range for a recurring event in one of 3 ways depending on your scenario. While you must always specify a **startDate** value for the date range, you can specify a recurring event that ends by a specific date, or that doesn't end, or that ends after a specific number of occurrences. Note that the actual occurrences within the date range always follow the recurrence pattern that you specify for the recurring event. A recurring event is always defined by its [recurrencePattern](recurrencepattern.md) (how frequently the event repeats), and its **recurrenceRange** (for how long the event repeats).

Use the **type** property to specify the different types of **recurrenceRange**. Note the required properties for each type, as described in the following table.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|endDate|Date|The date to stop applying the recurrence pattern. Depending on the recurrence pattern of the event, the last occurrence of the meeting may not be this date. Required if **type** is `endDate`.|
|numberOfOccurrences|Int32|The number of times to repeat the event. Required and must be positive if **type** is `numbered`.|
|recurrenceTimeZone|String |Time zone for the **startDate** and **endDate** properties. Optional. If not specified, the time zone of the event is used.|
|startDate|Date|The date to start applying the recurrence pattern. The first occurrence of the meeting may be this date or later, depending on the recurrence pattern of the event. Must be the same value as the **start** property of the recurring [event](event.md). Required.|
|type|recurrenceRangeType|The recurrence range. Possible values are: `endDate`, `noEnd`, `numbered`. Required.|

### recurrenceRangeType values

| Value  | Type of recurrence range | Description | Example | Required properties |
|:-------|:---------------|:--------|:--------|:--------|:----------|
|endDate |Range with end date | Event repeats on all the days that fit the corresponding recurrence pattern between the **startDate** and **endDate** inclusive. | Repeat event in the date range between June 1, 2017 and June 15, 2017. | **type**, **startDate**, **endDate** | 
|noEnd   |Range without an end date | Event repeats on all the days that fit the corresponding recurrence pattern beginning on the **startDate**. | Repeat event in the date range starting on June 1, 2017 indefinitely. | **type**, **startDate** |
|numbered|Range with specific number of occurrences | Event repeats for the **numberOfOccurrences** based on the recurrence pattern beginning on the **startDate**. | Repeat event in the date range starting on June 1, 2017, for 10 occurrences.  | **type**, **startDate**, **numberOfOccurrences** |


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recurrenceRange"
}-->

```json
{
  "endDate": "String (timestamp)",
  "numberOfOccurrences": 1024,
  "recurrenceTimeZone": "string",
  "startDate": "String (timestamp)",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recurrenceRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
