# Get incremental changes to events in a calendar view (preview)

A calendar view is a collection of events in a date/time range from the default calendar (../me/calendarview) 
or some other calendar of the user's. By using delta query, you can get 
new, updated, or deleted events in a calendar view. 
The returned events may include occurrences and exceptions of a recurring series, 
and single instances. The delta data enables you to maintain 
and synchronize a local store of a user's events, 
without having to fetch the entire set of the user's events from the server every time.

Delta query supports both full synchronization that retrieves all the events in the specified calendar view, 
and incremental synchronization that retrieves those events that have changed in the calendar view since 
the last synchronization. Typically, you would do an initial full synchronization, and 
subsequently, get incremental changes to that calendar view periodically. 

## Track event changes in a calendar view

Delta query for events is specific to a calendar and date/time range that you specify (i.e., a calendar view). To track the changes in multiple calendars, 
you need to track each calendar individually. 

Tracking event changes in a calendar view typically is a round of one or more GET requests with 
the [delta](../api-reference/beta/api/event_delta.md) function. The initial GET 
request is very much like the way you [list a calendarView](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/calendar_list_calendarview), 
except that you include the **delta** function:

```
GET /me/calendarView/delta?startDateTime={start_datetime}&endDateTime={end_datetime}
```

A GET request with the **delta** function returns either:

- A `nextLink` (that contains a URL with a **delta** function call and a _skipToken_), or 
- A `deltaLink` (that contains a URL with a **delta** function call and _deltaToken_).

These tokens are [state tokens](delta_query_overview.md#state-tokens) which encode the refs/remotes/microsoftgraph/master
_startDateTime_ and _endDateTime_ parameters, and any other query parameter 
in your initial delta query GET request. 

State tokens are completely opaque to the client. 
To proceed with a round of change tracking, simply copy and apply the `nextLink` or 
`deltaLink` URL returned from the last GET 
request to the next **delta** function call for that same calendar view. A `deltaLink` returned in a response 
signifies that the current round of change tracking is complete. You can save and use the `deltaLink` URL
when you begin the next round.

See the [example](#example-to-synchronize-events-in-a-calendar-view) below to learn how to use these `nextLink` and 
`deltaLink` URLs.

### Use query parameters in a delta query for calendar view

- Include the _startDateTime_ and _endDateTime_ parameters to define a date/time range for your calendar view.
- `$select` is not supported.


### Optional request header

Each delta query GET request returns a collection of one or more events in the response. You can optionally specify 
the request header, _Prefer: odata.maxpagesize={x}_, to set the maximum number of events in a response.


## Example to synchronize events in a calendar view

The following example shows a series of 3 requests to synchronize the user's default calendar in a specific time range. 
There are 5 events in that calendar view.

- [Step 1: sample initial request](#step-1-sample-initial-request) and [response](#sample-initial-response)
- [Step 2: sample second request](#step-2-sample-second-request) and [response](#sample-second-response)
- [Step 3: sample third request](#step-3-sample-third-request) and [final response](#sample-third-and-final-response)

For brevity, the sample responses show only a subset of the properties for an event. In an actual call, most event properties
are returned. 

See also what you'll do in the [next round](#the-next-round-sample-first-response).


### Step 1: sample initial request

In this example, the specified calendar view is being synchronized for the first time, so the initial sync request does not include any state token. 
This round will return all the events in that calendar view.

The first request specifies the following:

- Date/time values for the _startDateTime_ and _endDateTime_ parameters.
- The [optional request header](#optional-request-header), _odata.maxpagesize_, returning 2 events at a time.

<!-- {
  "blockType": "request",
  "name": "get_calendarview_delta_1"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendarview/delta?startdatetime=2016-12-01T00:00:00Z&enddatetime=2016-12-30T00:00:00Z HTTP/1.1
Prefer: odata.maxpagesize=2
```


### Sample initial response

The response includes two events and a `@odata.nextLink` response header with a `skipToken`. 
The `nextLink` URL indicates there are more events in the calendar view to get.

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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(event)",
    "@odata.nextLink":"https://graph.microsoft.com/beta/me/calendarview/delta?$skiptoken=R0usmcCM996atia_s",
    "value":[
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAAFXcvIQ==\"",
            "subject":"Plan shopping list",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-09T20:30:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-09T22:00:00.0000000",
                "timeZone":"UTC"
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },      
            "id":"AAMkADNVxRAAA="
        },
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAAFXcvIg==\"",
            "subject":"Pick up car",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-10T01:00:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-10T02:00:00.0000000",
                "timeZone":"UTC"
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADVxSAAA="
        }
    ]
}
```

### Step 2: sample second request

The second request specifies the `nextLink` URL returned from the previous response. Notice that it no longer has to specify
the same _startDateTime_ and _endDateTime_ parameters as in the initial request, as the `skipToken` in the `nextLink` URL encodes and includes them.

<!-- {
  "blockType": "request",
  "name": "get_calendarview_delta_2"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendarview/delta?$skiptoken=R0usmcCM996atia_s HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample second response 

The second response returns the next 2 events in the calendar view and another `nextLink`, indicating there are 
more events to get from the calendar view.

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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(event)",
    "@odata.nextLink":"https://graph.microsoft.com/beta/me/calendarview/delta?$skiptoken=R0usmci39OQxqJrxK4",
    "value":[
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAAFXcvIw==\"",
            "subject":"Get food",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-10T19:30:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-10T21:30:00.0000000",
                "timeZone":"UTC"
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADVxTAAA="
        },
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAAFXcvJA==\"",
            "subject":"Prepare food",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-10T22:00:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-11T00:00:00.0000000",
                "timeZone":"UTC"
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADVxUAAA="
        }
    ]
}
```


### Step 3: sample third request

The third request continues to use the latest `nextLink` returned from the last sync request. 
 

<!-- {
  "blockType": "request",
  "name": "get_calendarview_delta_3"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendarview/delta?$skiptoken=R0usmci39OQxqJrxK4 HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample third and final response

The third response returns the only remaining event in the calendar view, and a `deltaLink` URL which indicates 
synchronization is complete for this calendar view. Save and use the `deltaLink` URL to 
[synchronize that calendar view in the next round](#the-next-round-sample-first-request).


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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(event)",
    "@odata.deltaLink":"https://graph.microsoft.com/beta/me/calendarview/delta?$deltatoken=R0usmcMDNGg0J1E",
    "value":[
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAALZu97g==\"",
            "subject":"Rest!",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-12T02:00:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-12T07:30:00.0000000",
                "timeZone":"UTC"
            },
            "location":{
                "displayName":"Home"
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADj1HuAAA="
        }
    ]
}
```


### The next round: sample first request

Using the `deltaLink` from the [last request](#step-3-sample-third-request) in the last round, 
you will be able to get only those events that have changed (by being added, deleted, or updated) in that calendar view since then.
Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

<!-- {
  "blockType": "request",
  "name": "get_calendarview_delta_next"
}-->
```http
GET https://graph.microsoft.com/beta/me/calendarview/delta?$deltatoken=R0usmcMDNGg0J1E HTTP/1.1
Prefer: odata.maxpagesize=2
```

### The next round: sample first response

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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(event)",
    "@odata.deltaLink":"https://graph.microsoft.com/beta/me/calendarview/delta?$deltatoken=R0usmcFuQtZdtpk4",
    "value":[
        {
            "@odata.type":"#microsoft.graph.event",
            "@odata.etag":"W/\"EZ9r3czxY0m2jz8c45czkwAALZu97w==\"",
            "subject":"Attend service",
            "body":{
                "contentType":"html",
                "content":""
            },
            "start":{
                "dateTime":"2016-12-25T06:00:00.0000000",
                "timeZone":"UTC"
            },
            "end":{
                "dateTime":"2016-12-25T07:30:00.0000000",
                "timeZone":"UTC"
            },
            "location":{
                "displayName":"Chapel of Saint Ignatius",
                "address":{
                    "type":"unknown",
                    "street":"900 Broadway",
                    "city":"Seattle",
                    "state":"WA",
                    "countryOrRegion":"United States",
                    "postalCode":""
                },
                "coordinates":{
                    "latitude":47.6105,
                    "longitude":-122.321
                }
            },
            "attendees":[

            ],
            "organizer":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADj1HvAAA="
        }
    ]
}
```

## See also

- [Microsoft Graph delta query](../Concepts/delta_query_overview.md)
- [Get incremental changes to messages (preview)](../Concepts/delta_query_messages.md)
- [Get incremental changes to groups (preview)](../Concepts/delta_query_groups.md)
- [Get incremental changes to users (preview)](../Concepts/delta_query_users.md)
