# Get calendar

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the properties and relationships of a [calendar](../resources/calendar.md) object. The calendar can be one for a [user](../resources/user.md), 
or the default calendar of an Office 365 [group](../resources/group.md).

### Get another user's calendar

If you have application permissions, or if you have the appropriate delegated [permissions](#permissions) from one user, it's possible to get 
a calendar of another user's. This section focuses on scenarios that involve delegated permissions.

For example, your app has acquired delegated permissions from the user, John. Suppose another user, Garth, has shared a calendar with John. 
You can get that shared calendar by specifying Garth’s user ID (or user principal name) in the example query shown below.

<!-- { "blockType": "ignored" } -->
```http
GET /users/{Garth-id | Garth-userPrincipalName}/calendar
```

This capability applies to all the supported GET calendar operations for an individual user, as listed in the [HTTP request](#http-request) section below. 
It also applies if Garth has delegated his entire mailbox to John.

If Garth has not shared his calendar with John, nor has he delegated his mailbox to John, specifying Garth’s user ID or user principal name in those GET operations 
will return an error. In such cases, specifying a user ID or user principal name only works for getting a calendar of the signed-in user’s, 
and the query is equivalent to using the /me shortcut:

<!-- { "blockType": "ignored" } -->
```http
GET /me/calendar
```

This capability is available in only GET operations of:

- Shared contact folders, calendars, and message folders 
- Contacts, events, and messages in shared folders
- The above resources in delegated mailboxes

This capability is not available in other operations for contacts, events, messages, and their folders.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Calendars.Read    |
|Delegated (personal Microsoft account) | Calendars.Read    |
|Application | Calendars.Read |

## HTTP request
<!-- { "blockType": "ignored" } -->
A user's or group's default [calendar](../resources/calendar.md).
```http
GET /me/calendar
GET /users/{id | userPrincipalName}/calendar
GET /groups/{id}/calendar
```
A user's [calendar](../resources/calendar.md) in the default [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendars/{id}
GET /users/{id | userPrincipalName}/calendars/{id}

GET /me/calendarGroup/calendars/{id}
GET /users/{id | userPrincipalName}/calendarGroup/calendars/{id}
```
A user's [calendar](../resources/calendar.md) in a specific [calendarGroup](../resources/calendargroup.md).
```http
GET /me/calendarGroups/{id}/calendars/{id}
GET /users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [calendar](../resources/calendar.md) object in the response body.
## Example
##### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_calendar"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendar
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#me/calendars/$entity",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfcd489-628b-40d7-b48b-57002df800e5@1717622f-1d94-4d0c-9d74-709fad664b77')/calendars('AAMkAGI2TGuLAAA=')",
    "id": "AAMkAGI2TGuLAAA=",
    "name": "Calendar",
    "color": "auto",
    "isDefaultCalendar": false,
    "changeKey": "nfZyf7VcrEKLNoU37KWlkQAAA0x0+w==",
    "canShare":true,
    "canViewPrivateItems":true,
    "hexColor": "",
    "isShared":false,
    "isSharedWithMe":false,
    "canEdit":true,
    "owner":{
        "name":"Samantha Booth",
        "address":"samanthab@adatum.onmicrosoft.com"
    }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get calendar",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
