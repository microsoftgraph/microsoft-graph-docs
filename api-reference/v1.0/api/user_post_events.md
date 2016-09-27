# Create Event

Create an [event](../resources/event.md) in the user's default calendar. 

You can specify the time zone for each of the start and end times of the event as part of these values, as the 
**start** and **end** properties are of [DateTimeTimeZone](../resources/datetimetimezone.md) type. 

When the event is created, the server send invitations to all attendees.

## Prerequisites
One of the following **scopes** is required to execute this API:
*Calendars.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/events
```
## Request headers
| Header       | Value |
|:-----------|:------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json. Required.  |

## Request body
In the request body, supply a JSON representation of [Event](../resources/event.md) object.


## Response
If successful, this method returns `201, Created` response code and [Event](../resources/event.md) object in the response body.

## Example
##### Request
In the request body, supply a JSON representation of [event](../resources/event.md) object.
<!-- {
  "blockType": "request",
  "name": "create_event_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/events
Content-type: application/json

{
  "originalStartTimeZone": "originalStartTimeZone-value",
  "originalEndTimeZone": "originalEndTimeZone-value",
  "responseStatus": {
    "response": "",
    "time": "datetime-value"
  },
  "iCalUId": "iCalUId-value",
  "reminderMinutesBeforeStart": 15,
  "isReminderOn": true
}
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id":"id-value",
  "originalStartTimeZone":"UTC",
  "originalEndTimeZone":"UTC",
  "responseStatus":{
    "response":"organizer",
    "time":"0001-01-01T00:00:00Z"
  },
  "iCalUId":"iCalUId-value",
  "reminderMinutesBeforeStart":15,
  "isReminderOn":true,
  "hasAttachments":false,
  "subject":null,
  "body":{
    "contentType":"text",
    "content":"content-value"
  },
  "bodyPreview":"bodyPreview-value",
  "importance":"normal",
  "sensitivity":"normal",
  "start":{
    "dateTime":"2016-09-26T17:00:00.0009761",
    "timeZone":"UTC"
  },
  "end":{
    "dateTime":"2016-09-26T17:30:00.0009761",
    "timeZone":"UTC"
  },
  "location":{
    "displayName":"",
    "address":{}
   },
  "isAllDay":false,
  "isCancelled":false,
  "isOrganizer":true,
  "recurrence":null,
  "responseRequested":true,
  "showAs":"busy",
  "type":"singleInstance",
  "attendees":[],
  "organizer":{"emailAddress":{
    "name":"emailAddress-value",
    "address":"address-value"}
  }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Event",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
