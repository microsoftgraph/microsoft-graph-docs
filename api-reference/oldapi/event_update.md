# Update event

Update the properties of event object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/events/<id>
PATCH /me/calendarView/<id>
PATCH /users/<id>/events/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|attendee||
|body|itemBody||
|bodyPreview|string||
|categories|string||
|changeKey|string||
|createdDateTime|dateTimeOffset||
|end|dateTimeTimeZone||
|hasAttachments|boolean||
|iCalUId|string||
|importance|string| Possible values are: `low`, `normal`, `high`.|
|isAllDay|boolean||
|isCancelled|boolean||
|isOrganizer|boolean||
|isReminderOn|boolean||
|lastModifiedDateTime|dateTimeOffset||
|location|location||
|onlineMeetingUrl|string||
|organizer|recipient||
|originalEndTimeZone|string||
|originalStart|dateTimeOffset||
|originalStartTimeZone|string||
|recurrence|patternedRecurrence||
|reminderMinutesBeforeStart|int32||
|responseRequested|boolean||
|responseStatus|responseStatus||
|sensitivity|string| Possible values are: `normal`, `personal`, `private`, `confidential`.|
|seriesMasterId|string||
|showAs|string| Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|start|dateTimeTimeZone||
|subject|string||
|type|string| Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`.|
|webLink|string||

### Response
If successful, this method returns a `200 OK` response code and updated [event](../resources/event.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_event"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/events/<id>
Content-type: application/json
Content-length: 294

{
  "originalStartTimeZone": "originalStartTimeZone-value",
  "originalEndTimeZone": "originalEndTimeZone-value",
  "responseStatus": {
    "response": "response-value",
    "time": "datetime-value"
  },
  "iCalUId": "iCalUId-value",
  "reminderMinutesBeforeStart": 99,
  "isReminderOn": true
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 294

{
  "originalStartTimeZone": "originalStartTimeZone-value",
  "originalEndTimeZone": "originalEndTimeZone-value",
  "responseStatus": {
    "response": "response-value",
    "time": "datetime-value"
  },
  "iCalUId": "iCalUId-value",
  "reminderMinutesBeforeStart": 99,
  "isReminderOn": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update event",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->