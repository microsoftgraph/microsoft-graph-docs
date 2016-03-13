# calendar resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get calendar](../api/calendar_get.md) | [calendar](calendar.md) |Read properties and relationships of calendar object.|
|[Create event](../api/calendar_post_calendarview.md) |[event](event.md)| Create a new event by posting to the calendarView collection.|
|[List calendarView](../api/calendar_list_calendarview.md) |[event](event.md) collection| Get a event object collection.|
|[Create event](../api/calendar_post_events.md) |[event](event.md)| Create a new event by posting to the events collection.|
|[List events](../api/calendar_list_events.md) |[event](event.md) collection| Get a event object collection.|
|[Create multiValueLegacyExtendedProperty](../api/calendar_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/calendar_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/calendar_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/calendar_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/calendar_update.md) | [calendar](calendar.md)	|Update calendar object. |
|[Delete](../api/calendar_delete.md) | None |Delete calendar object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|string||
|color|string| Possible values are: `lightBlue`, `lightGreen`, `lightOrange`, `lightGray`, `lightYellow`, `lightTeal`, `lightPink`, `lightBrown`, `lightRed`, `maxColor`, `auto`.|
|id|string| Read-only.|
|name|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|calendarView|[event](event.md) collection| Read-only. Nullable.|
|events|[event](event.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.calendar"
}-->

```json
{
  "changeKey": "string",
  "color": "string",
  "id": "string (identifier)",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "calendar resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->