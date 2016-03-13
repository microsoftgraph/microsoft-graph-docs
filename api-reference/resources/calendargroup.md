# calendarGroup resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get calendarGroup](../api/calendargroup_get.md) | [calendarGroup](calendargroup.md) |Read properties and relationships of calendarGroup object.|
|[Create calendar](../api/calendargroup_post_calendars.md) |[calendar](calendar.md)| Create a new calendar by posting to the calendars collection.|
|[List calendars](../api/calendargroup_list_calendars.md) |[calendar](calendar.md) collection| Get a calendar object collection.|
|[Update](../api/calendargroup_update.md) | [calendarGroup](calendargroup.md)	|Update calendarGroup object. |
|[Delete](../api/calendargroup_delete.md) | None |Delete calendarGroup object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|string||
|classId|guid||
|id|string| Read-only.|
|name|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|calendars|[calendar](calendar.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.calendargroup"
}-->

```json
{
  "changeKey": "string",
  "classId": "guid",
  "id": "string (identifier)",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "calendarGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->