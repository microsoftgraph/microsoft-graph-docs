# event resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get event](../api/event_get.md) | [event](event.md) |Read properties and relationships of event object.|
|[Create attachment](../api/event_post_attachments.md) |[attachment](attachment.md)| Create a new attachment by posting to the attachments collection.|
|[List attachments](../api/event_list_attachments.md) |[attachment](attachment.md) collection| Get a attachment object collection.|
|[Create extension](../api/event_post_extensions.md) |[extension](extension.md)| Create a new extension by posting to the extensions collection.|
|[List extensions](../api/event_list_extensions.md) |[extension](extension.md) collection| Get a extension object collection.|
|[Create event](../api/event_post_instances.md) |[event](event.md)| Create a new event by posting to the instances collection.|
|[List instances](../api/event_list_instances.md) |[event](event.md) collection| Get a event object collection.|
|[Create multiValueLegacyExtendedProperty](../api/event_post_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md)| Create a new multiValueLegacyExtendedProperty by posting to the multiValueExtendedProperties collection.|
|[List multiValueExtendedProperties](../api/event_list_multivalueextendedproperties.md) |[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Get a multiValueLegacyExtendedProperty object collection.|
|[Create singleValueLegacyExtendedProperty](../api/event_post_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md)| Create a new singleValueLegacyExtendedProperty by posting to the singleValueExtendedProperties collection.|
|[List singleValueExtendedProperties](../api/event_list_singlevalueextendedproperties.md) |[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Get a singleValueLegacyExtendedProperty object collection.|
|[Update](../api/event_update.md) | [event](event.md)	|Update event object. |
|[Delete](../api/event_delete.md) | None |Delete event object. |
|[Accept](../api/event_accept.md)|None||
|[Cancel](../api/event_cancel.md)|None||
|[Decline](../api/event_decline.md)|None||
|[Dismissreminder](../api/event_dismissreminder.md)|None||
|[Snoozereminder](../api/event_snoozereminder.md)|None||
|[Tentativelyaccept](../api/event_tentativelyaccept.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|[attendee](attendee.md) collection||
|body|[itemBody](itembody.md)||
|bodyPreview|string||
|categories|string collection||
|changeKey|string||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|end|[dateTimeTimeZone](datetimetimezone.md)||
|hasAttachments|boolean||
|iCalUId|string||
|id|string| Read-only.|
|importance|string| Possible values are: `low`, `normal`, `high`.|
|isAllDay|boolean||
|isCancelled|boolean||
|isOrganizer|boolean||
|isReminderOn|boolean||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|location|[location](location.md)||
|onlineMeetingUrl|string||
|organizer|[recipient](recipient.md)||
|originalEndTimeZone|string||
|originalStart|[dateTimeOffset](datetimeoffset.md)||
|originalStartTimeZone|string||
|recurrence|[patternedRecurrence](patternedrecurrence.md)||
|reminderMinutesBeforeStart|int32||
|responseRequested|boolean||
|responseStatus|[responseStatus](responsestatus.md)||
|sensitivity|string| Possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|string||
|showAs|string| Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|[dateTimeTimeZone](datetimetimezone.md)||
|subject|string||
|type|string| Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`.|
|webLink|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[attachment](attachment.md) collection| Read-only. Nullable.|
|calendar|[calendar](calendar.md)| Read-only. Nullable.|
|extensions|[extension](extension.md) collection| Read-only. Nullable.|
|instances|[event](event.md) collection| Read-only. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.event"
}-->

```json
{
  "attendees": [{"@odata.type": "microsoft.graph.attendee"}],
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "bodyPreview": "string",
  "categories": ["string"],
  "changeKey": "string",
  "createdDateTime": "String (timestamp)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "hasAttachments": true,
  "iCalUId": "string",
  "id": "string (identifier)",
  "importance": "string",
  "isAllDay": true,
  "isCancelled": true,
  "isOrganizer": true,
  "isReminderOn": true,
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.location"},
  "onlineMeetingUrl": "string",
  "organizer": {"@odata.type": "microsoft.graph.recipient"},
  "originalEndTimeZone": "string",
  "originalStart": "String (timestamp)",
  "originalStartTimeZone": "string",
  "recurrence": {"@odata.type": "microsoft.graph.patternedRecurrence"},
  "reminderMinutesBeforeStart": 1024,
  "responseRequested": true,
  "responseStatus": {"@odata.type": "microsoft.graph.responseStatus"},
  "sensitivity": "string",
  "seriesMasterId": "string",
  "showAs": "string",
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "subject": "string",
  "type": "string",
  "webLink": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "event resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->