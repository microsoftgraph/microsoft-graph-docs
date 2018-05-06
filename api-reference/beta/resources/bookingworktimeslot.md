# bookingWorkTimeSlot resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
 
The start and end times for work.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|end|TimeOfDay|The time of the day that work starts. For example, 08:00:00.0000000.|
|start|TimeOfDay|The time of the day that work stops. For example, 17:00:00.0000000.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingWorkTimeSlot"
}-->

```json
{
  "end": "String (timestamp)",
  "start": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingWorkTimeSlot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->