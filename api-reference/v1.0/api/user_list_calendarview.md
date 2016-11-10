# List calendarView

Get the occurrences, exceptions, and single instances of events in a calendar view defined by a time range, from the user's primary calendar or from a different calendar.
## Prerequisites
One of the following **scopes** is required to execute this API:
*Calendars.Read; Calendars.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/<id | userPrincipalName>/calendarView?startDateTime={start_datetime}&endDateTime={end_datetime}
```

## Query parameters

In the request URL, provide the following required query parameters with values.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|startDateTime|String|The start date and time of the time range, represented in ISO 8601 format. For example, "2015-11-08T19:00:00.0000000".|
|endDateTime|String|The end date and time of the time range, represented in ISO 8601 format. For example, "2015-11-08T20:00:00.0000000".|

This method also supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |
| Content-Type  | application/json|
| Prefer | string | <Time zone>. Optional, UTC assumed if absent.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [Event](../resources/event.md) objects in the response body.
## Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_calendarview"
}-->
```http
GET https://graph.microsoft.com/v1.0/users/me/calendarView?startDateTime=2016-01-01T19:00:00.0000000&endDateTime=2016-10-01T19:00:00.0000000 
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
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
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List calendarView",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
