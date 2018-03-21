# Create Event

Create an [event](../resources/event.md) in the user's default calendar or specified calendar.

You can specify the time zone for each of the start and end times of the event as part of these values, as the 
**start** and **end** properties are of [dateTimeTimeZone](../resources/datetimetimezone.md) type. 

When an event is sent, the server sends invitations to all the attendees.

**Setting the location in an event**

An Exchange administrator can set up a mailbox and an email address for a resource such as a meeting room, or equipment 
like a projector. Users can then invite the resource as an attendee to a meeting. On behalf of the resource, the server accepts or rejects 
the meeting request based on the free/busy schedule of the resource. 
If the server accepts a meeting for the resource, it creates an event for the meeting in the resource's calendar. If the meeting is rescheduled, 
the server automatically updates the event in the resource's calendar.

Another advantage of setting up a mailbox for a resource is to control scheduling of the resource, for example, only executives
or their delegates can book a private meeting room.

If you're organizing an event that involves a meeting location:

1. Set the **location** property of the **event** accordingly. 
2. Set the optional **locationEmailAddress** property if the meeting location has an email address.

Additionally, if the meeting location has been set up as a resource, or if the event involves some equipment that has been set up as a resource:

3. Invite the resource as an [attendee](../resources/attendee.md).
4. Set the attendee **type** property as `resource`.
5. Set the attendee **emailAddress** as the resource email address.



## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Calendars.ReadWrite    |
|Delegated (personal Microsoft account) | Calendars.ReadWrite    |
|Application | Calendars.ReadWrite |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/events
POST /users/{id | userPrincipalName}/events

POST /me/calendar/events
POST /users/{id | userPrincipalName}/calendar/events

POST /me/calendars/{id}/events
POST /users/{id | userPrincipalName}/calendars/{id}/events
```
## Request headers
| Header       | Value |
|:-----------|:------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |

## Request body
In the request body, supply a JSON representation of [event](../resources/event.md) object.

Since the **event** resource supports [extensions](../../../concepts/extensibility_overview.md), you can use the `POST` operation and add custom properties with your own data to the event while creating it.

## Response

If successful, this method returns `201 Created` response code and [event](../resources/event.md) object in the response body.

## Example
##### Request 1
Here is an example of the request. It uses the `Prefer: outlook.timezone` request header to specify the time zone for the **start** and **end** 
times in the response.
<!-- {
  "blockType": "request",
  "name": "create_event_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/events
Prefer: outlook.timezone="Pacific Standard Time"
Content-type: application/json
Content-length: 600

{
  "subject": "Let's go for lunch",
  "body": {
    "contentType": "HTML",
    "content": "Does late morning work for you?"
  },
  "start": {
      "dateTime": "2017-04-15T12:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "end": {
      "dateTime": "2017-04-15T14:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "location":{
      "displayName":"Harry's Bar"
  },
  "attendees": [
    {
      "emailAddress": {
        "address":"samanthab@contoso.onmicrosoft.com",
        "name": "Samantha Booth"
      },
      "type": "required"
    }
  ]
}
```
In the request body, supply a JSON representation of [event](../resources/event.md) object.
##### Response 1
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 2197

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('cd209b0b-3f83-4c35-82d2-d88a61820480')/events/$entity",
    "@odata.etag":"W/\"ZlnW4RIAV06KYYwlrfNZvQAALfZeRQ==\"",
    "id":"AAMkAGI1AAAt9AHjAAA=",
    "createdDateTime":"2017-04-15T03:00:50.7579581Z",
    "lastModifiedDateTime":"2017-04-15T03:00:51.245372Z",
    "changeKey":"ZlnW4RIAV06KYYwlrfNZvQAALfZeRQ==",
    "categories":[

    ],
    "originalStartTimeZone":"Pacific Standard Time",
    "originalEndTimeZone":"Pacific Standard Time",
    "iCalUId":"040000008200E00074C5B7101A82E00800000000DA2B357D94B5D201000000000000000010000000EC4597557F0CB34EA4CC2887EA7B17C3",
    "reminderMinutesBeforeStart":15,
    "isReminderOn":true,
    "hasAttachments":false,
    "subject":"Let's go brunch",
    "bodyPreview":"Does late morning work for you?",
    "importance":"normal",
    "sensitivity":"normal",
    "isAllDay":false,
    "isCancelled":false,
    "isOrganizer":true,
    "responseRequested":true,
    "seriesMasterId":null,
    "showAs":"busy",
    "type":"singleInstance",
    "webLink":"https://outlook.office365.com/owa/?itemid=AAMkAGI1AAAt9AHjAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl":null,
    "responseStatus":{
        "response":"organizer",
        "time":"0001-01-01T00:00:00Z"
    },
    "body":{
        "contentType":"html",
        "content":"<html><head></head><body>Does late morning work for you?</body></html>"
    },
    "start":{
        "dateTime":"2017-04-15T11:00:00.0000000",
        "timeZone":"Pacific Standard Time"
    },
    "end":{
        "dateTime":"2017-04-15T12:00:00.0000000",
        "timeZone":"Pacific Standard Time"
    },
    "location":{
        "displayName":"Harry's Bar"
    },
    "recurrence":null,
    "attendees":[
        {
            "type":"required",
            "status":{
                "response":"none",
                "time":"0001-01-01T00:00:00Z"
            },
            "emailAddress":{
                "name":"Samantha Booth",
                "address":"samanthab@contoso.onmicrosoft.com"
            }
        }
    ],
    "organizer":{
        "emailAddress":{
            "name":"Dana Swope",
            "address":"danas@contoso.onmicrosoft.com"
        }
    }
}
```

##### Request 2
The second example shows how to create a recurring event. The event occurs from 10:00am to 11:00am, every Monday starting September 4, 2017, through the end of the year.
<!-- {
  "blockType": "request",
  "name": "create_event_recurring"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/events
Content-type: application/json

{
  "subject": "Let's go for coffee",
  "body": {
    "contentType": "HTML",
    "content": "Does late morning work for you?"
  },
  "start": {
      "dateTime": "2017-09-04T10:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "end": {
      "dateTime": "2017-09-04T11:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "recurrence": {
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "daysOfWeek": [ "Monday" ]
    },
    "range": {
      "type": "endDate",
      "startDate": "2017-09-04",
      "endDate": "2017-12-31"
    }
  },
  "location":{
      "displayName":"Harry's Bar"
  },
  "attendees": [
    {
      "emailAddress": {
        "address":"AdeleV@contoso.onmicrosoft.com",
        "name": "Adele Vance"
      },
      "type": "required"
    }
  ]
}
```
In the request body, supply a JSON representation of [event](../resources/event.md) object.
##### Response 2
Here is an example of the response. 
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "name": "create_event_recurring",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('919717da-0460-4cca-a6be-d25382429896')/events/$entity",
    "@odata.etag":"W/\"+T8RDneHMkKe2BGYEaQZ4wAA7WsvGQ==\"",
    "id":"AAMkADQwMDI5YT",
    "createdDateTime":"2017-10-14T07:37:39.0083072Z",
    "lastModifiedDateTime":"2017-10-14T07:37:40.0239406Z",
    "changeKey":"+T8RDneHMkKe2BGYEaQZ4wAA7WsvGQ==",
    "categories":[

    ],
    "originalStartTimeZone":"Pacific Standard Time",
    "originalEndTimeZone":"Pacific Standard Time",
    "iCalUId":"040000008200E00074C5B7101A82E008000000000068AD4FBF44D301000000000000000010000000CA802EEBDE19CB4AB552714F48C7EEFB",
    "reminderMinutesBeforeStart":15,
    "isReminderOn":true,
    "hasAttachments":false,
    "subject":"Let's go for coffee",
    "bodyPreview":"Does late morning work for you?",
    "importance":"normal",
    "sensitivity":"normal",
    "isAllDay":false,
    "isCancelled":false,
    "isOrganizer":true,
    "responseRequested":true,
    "seriesMasterId":null,
    "showAs":"busy",
    "type":"seriesMaster",
    "webLink":"https://outlook.office365.com/owa/?itemid=AAMkADQwMDI5YT&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl":null,
    "responseStatus":{
        "response":"organizer",
        "time":"0001-01-01T00:00:00Z"
    },
    "body":{
        "contentType":"html",
        "content":"<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes late morning work for you?\r\n</body>\r\n</html>\r\n"
    },
    "start":{
        "dateTime":"2017-09-04T10:00:00.0000000",
        "timeZone":"Pacific Standard Time"
    },
    "end":{
        "dateTime":"2017-09-04T11:00:00.0000000",
        "timeZone":"Pacific Standard Time"
    },
    "location":{
        "displayName":"Harry's Bar"
    },
    "recurrence":{
        "pattern":{
            "type":"weekly",
            "interval":1,
            "month":0,
            "dayOfMonth":0,
            "daysOfWeek":[
                "monday"
            ],
            "firstDayOfWeek":"sunday",
            "index":"first"
        },
        "range":{
            "type":"endDate",
            "startDate":"2017-09-04",
            "endDate":"2017-12-31",
            "recurrenceTimeZone":"Pacific Standard Time",
            "numberOfOccurrences":0
        }
    },
    "attendees":[
        {
            "type":"required",
            "status":{
                "response":"none",
                "time":"0001-01-01T00:00:00Z"
            },
            "emailAddress":{
                "name":"Adele Vance",
                "address":"AdeleV@contoso.onmicrosoft.com"
            }
        }
    ],
    "organizer":{
        "emailAddress":{
            "name":"Alex Wilber",
            "address":"AlexW@contoso.onmicrosoft.com"
        }
    }
}
```


## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions (preview)](../../../concepts/extensibility_open_users.md)
<!--
- [Add custom data to groups using schema extensions (preview)](../../../concepts/extensibility_schema_groups.md)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Event",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
