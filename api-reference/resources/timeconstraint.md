# timeConstraint resource type

The time periods for an activity of the specified nature.

### JSON representation

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
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityDomain|String|The nature of the activity, optional. Possible values are: `Unknown`, `Work`, `Personal`.|
|timeslots|[TimeSlot](timeslot.md) collection|An array of time periods.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeConstraint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->