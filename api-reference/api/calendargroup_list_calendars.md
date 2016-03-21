# List calendars

Retrieve a list of calendars belonging to a calendar group.
### Prerequisites
One of the following **scopes** is required to execute this API: _Calendars.Read_
### HTTP request
<!-- { "blockType": "ignored" } -->
A user's default [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendarGroup/calendars
GET /users/<id | userPrincipalName>/calendarGroup/calendars
```
Any [calendarGroup](../resources/calendargroup.md) of a user.
```http
GET /me/calendarGroups/<id>/calendars
GET /users/<id | userPrincipalName>/calendarGroups/<id>/calendars
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
If successful, this method returns a `200 OK` response code and collection of [Calendar](../resources/calendar.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_calendars"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendarGroups/<id>/calendars
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 147

{
  "value": [
    {
      "name": "name-value",
      "color": {
      },
      "changeKey": "changeKey-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List calendars",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
