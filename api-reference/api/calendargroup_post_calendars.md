# Create calendar

Use this API to create a new calendar.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/calendarGroups/<id>/calendars
POST /users/<id>/calendarGroups/<id>/calendars
POST /drive/root/createdByUser/calendarGroups/<id>/calendars

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [calendar](../resources/calendar.md) object.


### Response
If successful, this method returns `201, Created` response code and [calendar](../resources/calendar.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_calendar_from_calendargroup"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/calendarGroups/<id>/calendars
Content-type: application/json
Content-length: 86

{
  "name": "name-value",
  "color": "color-value",
  "changeKey": "changeKey-value"
}
```
In the request body, supply a JSON representation of [calendar](../resources/calendar.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 106

{
  "name": "name-value",
  "color": "color-value",
  "changeKey": "changeKey-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create calendar",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->