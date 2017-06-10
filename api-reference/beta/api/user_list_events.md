# List events

Get a list of [event](../resources/event.md) objects from the user's default calendar or 
from a specified calendar. The list contains single instance meetings and series masters.

To get expanded event instances, you can [get the calendar view](calendar_list_calendarview.md), or 
[get the instances of an event](event_list_instances.md).

### Support various time zones

For all GET operations that return events, you can use the `Prefer: outlook.timezone` header to specify the time zone for the event start and end times in the response. 

For example, the following `Prefer: outlook.timezone` header sets the start and end times in the response to Eastern Standard Time.
```http
Prefer: outlook.timezone="Eastern Standard Time"
```

If the event was created in a different time zone, the start and end times will be adjusted to the time zone specified in that `Prefer` header. 
See this [list](../resources/datetimetimezone.md) for the supported time zone names. If the `Prefer: outlook.timezone` header is not specified, the start and end 
times are returned in UTC.

You can use the **OriginalStartTimeZone** and **OriginalEndTimeZone** properties on the **event** resource to 
find out the time zone used when the event was created.

### Get the event body in HTML or text format

Event bodies can be in HTML or text format.

You can use the `Prefer: outlook.body-content-type` header to specify the desired format returned in the **body** property in a `GET` request:

- Specify `Prefer: outlook.body-content-type="text"` to get an event body returned in text format.
- Specify `Prefer: outlook.body-content-type="html"`, or just skip the header, to return the event body in HTML format.

If you specify either header, the response will include the corresponding `Preference-Applied` header as confirmation:

- For text format requests: `Preference-Applied: outlook.body-content-type="text"`
- For HTML format requests: `Preference-Applied: outlook.body-content-type="html"`


## Prerequisites
One of the following **scopes** is required to execute this API:
*Calendars.Read; Calendars.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/events
GET /users/{id | userPrincipalName}/events

GET /me/calendar/events
GET /users/{id | userPrincipalName}/calendar/events

GET /me/calendars/{id}/events
GET /users/{id | userPrincipalName}/calendars/{id}/events

GET /me/calendargroup/calendars/{id}/events
GET /users/{id | userPrincipalName}/calendargroup/calendars/{id}/events

GET /me/calendargroups/{id}/calendars/{id}/events
GET /users/{id | userPrincipalName}/calendargroups/{id}/calendars/{id}/events
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Prefer: outlook.timezone | string | The default time zone for events in the response. Optional. |
| Prefer: outlook.body-content-type | string | The format of the **body** property to be returned in. Values can be "text" or "html". Optional. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [event](../resources/event.md) objects in the response body.
## Example
##### Request 1
The first example gets all the user's events. It specifies the following:

- A `Prefer: outlook.timezone` header to get date time values returned in Pacific Standard Time. 
- A `$select` query parameter to return specific properties. Without a `$select` parameter, all of the event properties will be returned.

The request does not specify any `Prefer: outlook.body-content-type` header to indicate a specific format for the returned event body. 

<!-- {
  "blockType": "request",
  "name": "get_events"
}-->
```http
GET https://graph.microsoft.com/beta/me/events?$select=subject,body,bodyPreview,organizer,attendees,start,end,location
Prefer: outlook.timezone="Pacific Standard Time"
```
##### Response 1
Here is an example of the response. Because no `Prefer: outlook.body-content-type` header was specified, the **body** property is returned in the default HTML format.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Preference-Applied: outlook.timezone="Pacific Standard Time"
Content-length: 1932

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('cd209b0b-3f83-4c35-82d2-d88a61820480')/events(subject,body,bodyPreview,organizer,attendees,start,end,location)",
    "value":[
        {
            "@odata.etag":"W/\"ZlnW4RIAV06KYYwlrfNZvQAAKGWwbw==\"",
            "id":"AAMkAGIAAAoZDOFAAA=",
            "subject":"Orientation ",
            "bodyPreview":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.",
            "body":{
                "contentType":"html",
                "content":"<html><head></head><body><p>Dana, this is the time you selected for our orientation. Please bring the notes I sent you.</p></body></html>"
            },
            "start":{
                "dateTime":"2017-04-21T10:00:00.0000000",
                "timeZone":"Pacific Standard Time"
            },
            "end":{
                "dateTime":"2017-04-21T12:00:00.0000000",
                "timeZone":"Pacific Standard Time"
            },
            "location":{
                "displayName":"Assembly Hall"
            },
            "attendees":[
                {
                    "type":"required",
                    "status":{
                        "response":"none",
                        "time":"0001-01-01T00:00:00Z"
                    },
                    "emailAddress":{
                        "name":"Fanny Downs",
                        "address":"fannyd@a830edad905084922E17020313.onmicrosoft.com"
                    }
                },
                {
                    "type":"required",
                    "status":{
                        "response":"none",
                        "time":"0001-01-01T00:00:00Z"
                    },
                    "emailAddress":{
                        "name":"Dana Swope",
                        "address":"danas@a830edad905084922E17020313.onmicrosoft.com"
                    }
                }
            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@a830edad905084922E17020313.onmicrosoft.com"
                }
            }
        }
    ]
}
```

##### Request 2
The second example shows how to use a `Prefer: outlook.body-content-type="text"` header to get the **body** property of the specified message in text format.

The request also uses a `$select` query parameter to return specific properties. Without a `$select` parameter, all of the event properties will be returned.
<!-- {
  "blockType": "request",
  "name": "get_events_in_text"
}-->
```http
Prefer: outlook.body-content-type="text"

GET https://graph.microsoft.com/beta/me/events?$select=subject,body,bodyPreview  
```
##### Response 2
Here is an example of the response. The **body** property is returned in text format. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Preference-Applied: outlook.body-content-type="text"
Content-length: 640

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('cd209b0b-3f83-4c35-82d2-d88a61820480')/events(subject,body,bodyPreview)",
    "value":[
        {
            "@odata.etag":"W/\"ZlnW4RIAV06KYYwlrfNZvQAAKGWwbw==\"",
            "id":"AAMkAGIAAAoZDOFAAA=",
            "subject":"Orientation ",
            "bodyPreview":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.",
            "body":{
                "contentType":"text",
                "content":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.\r\n"
            }
        }
    ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List events",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
