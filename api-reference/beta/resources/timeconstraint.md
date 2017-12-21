# timeConstraint resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Restricts meeting time suggestions to certain hours and days of the week according to the specified nature of activity and open time slots.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeconstraint"
}-->

```json
{
  "activityDomain": "String",
  "timeslots": [{"@odata.type": "microsoft.graph.timeSlot"}]
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityDomain|String|The nature of the activity, optional. Possible values are: `work`, `personal`, `unrestricted`, or `unknown`.|
|timeslots|[timeSlot](timeslot.md) collection|An array of time periods.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeConstraint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->