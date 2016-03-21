# Get fileAttachment

Retrieve the properties and relationships of fileattachment object.
### Prerequisites
One of the following **scopes** is required to execute this API:

* If accessing attachments in Messages: *Mail.Read*
* If accessing attachments in Events: *Calendars.Read*
* If accessing attachments in Group Events or Posts: *Group.Read.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
Attachments for an [event](../resources/event.md) in the user's or group's default [calendar](../resources/calendar.md).
```http
GET /me/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/events/<id>/attachments/<id>
GET /groups/<id>/events/<id>/attachments/<id>

GET /me/calendar/<id>/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/calendar/events/<id>/attachments/<id>
GET /groups/<id>/calendar/events/<id>/attachments/<id>
```
Attachments for an [event](../resources/event.md) in a [calendar](../resources/calendar.md) belonging to the user's default [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendars/<id>/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/calendars/<id>/events/<id>/attachments/<id>

GET /me/calendargroup/calendars/<id>/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/calendargroup/calendars/<id>/events/<id>/attachments/<id>
```
Attachments for an [event](../resources/event.md) in a [calendar](../resources/calendar.md) belonging to a user's [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendargroups/<id>/calendars/<id>/events/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/calendargroups/<id>/calendars/<id>/events/<id>/attachments/<id>
```
Attachments for a [message](../resources/message.md) in a user's mailbox.
```http
GET /me/messages/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/messages/<id>/attachments/<id>
```
Attachments for a [message](../resources/message.md) contained in a top level [mailFolder](../resources/mailfolder.md) in a user's mailbox.
```http
GET /me/mailFolders/<id>/messages/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/mailFolders/<id>/messages/<id>/attachments/<id>
```
Attachments for a [message](../resources/message.md) contained in a child folder of a [mailFolder](../resources/mailfolder.md) in a user's mailbox.  The
example below shows one level of nesting, but a message can be located in a child of a child and so on.
```http
GET /me/mailFolders/<id>/childFolders/<id>/.../messages/<id>/attachments/<id>
GET /users/<id | userPrincipalName>/mailFolders/<id>/childFolders/<id>/messages/<id>/attachments/<id>
```
Attachments for a [post](../resources/post.md) in a [thread](../resources/conversationthread.md) belonging to a [conversation](../resources/conversation.md) of a group.
```http
GET /groups/<id>/threads/<id>/posts/<id>/attachments/<id>
GET /groups/<id>/conversations/<id>/threads/<id>/posts/<id>/attachments/<id>
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [fileAttachment](../resources/fileattachment.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_fileattachment"
}-->
```http
GET https://graph.microsoft.com/beta/me/events/<id>/attachments/<id>
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileAttachment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 215

{
  "value": [
    {
      "@odata.type": "#Microsoft.OutlookServices.FileAttachment",
      "contentType": "contentType-value",
      "contentLocation": "contentLocation-value",
      "contentBytes": "contentBytes-value",
      "contentId": "null",
      "lastModifiedDateTime": "datetime-value",
      "id": "id-value",
      "isInline": false,
      "isContactPhoto": false,
      "name": "name-value",
      "size": 99
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get fileAttachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
