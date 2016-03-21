# event: dismissReminder

Dissmiss a reminder that has been triggered.

### Prerequisites
One of the following **scopes** is required to execute this API:
*Calendars.ReadWrite*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/events/<id>/microsoft.graph.dismissReminder
POST /users/<id | userPrincipalName>/events/<id>/microsoft.graph.dismissReminder
POST /groups/<id>/events/<id>/microsoft.graph.dismissReminder

POST /me/calendar/events/<id>/microsoft.graph.dismissReminder
POST /users/<id | userPrincipalName>/calendar/events/<id>/microsoft.graph.dismissReminder
POST /groups/<id>/calendar/events/<id>/microsoft.graph.dismissReminder

POST /me/calendars/<id>/events/<id>/microsoft.graph.dismissReminder
POST /users/<id | userPrincipalName>/calendars/<id>/events/<id>/microsoft.graph.dismissReminder

POST /me/calendargroup/calendars/<id>/events/<id>/microsoft.graph.dismissReminder
POST /users/<id | userPrincipalName>/calendargroup/calendars/<id>/events/<id>/microsoft.graph.dismissReminder

POST /me/calendargroups/<id>/calendars/<id>/events/<id>/microsoft.graph.dismissReminder
POST /users/<id | userPrincipalName>/calendargroups/<id>/calendars/<id>/events/<id>/microsoft.graph.dismissReminder
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "event_dismissreminder"
}-->
```http
POST https://graph.microsoft.com/beta/me/events/<id>/microsoft.graph.dismissReminder
```

##### Response
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "event: dismissReminder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
