---
title: "Get event"
description: "Get an event object."
author: "yyuank"
localization_priority: Normal
ms.prod: "groups"
doc_type: apiPageType
---

# Get event

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [event](../resources/event.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/events/{id}
GET /groups/{id}/calendar/events/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name       | Type | Description |
|:---------------|:--------|:--------|
| Authorization  | string | Bearer {token}. Required.  |
| Prefer: outlook.timezone  | string | Use this to specify the time zone for start and end times in the response. If not specified, those time values are returned in UTC. Optional. |
| Prefer: outlook.body-content-type | string | The format of the **body** property to be returned in. Values can be "text" or "html". A `Preference-Applied` header is returned as confirmation if this `Prefer` header is specified. If the header is not specified, the **body** property is returned in HTML format. Optional. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [event](../resources/event.md) object in the response body.

## Example
#### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_group_event"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/02bd9fd6-8f93-4758-87c3-1fb73740a315/events/AQMkAGI5MWY5ZmUyLTJiNzYtNDE0ZC04OWEwLWM3M2FjYmM3NwAzZWYARgAAA_b2VnUAiWNLj0xeSOs499YHAMT2RdsuOqRIlQZ4vOzp66YAAAIBDQAAAMT2RdsuOqRIlQZ4vOzp66YAAAIJOgAAAA==
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-group-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-group-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-group-event-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-group-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1728

{
    "id": "AQMkAGI5MWY5ZmUyLTJiNzYtNDE0ZC04OWEwLWM3M2FjYmM3NwAzZWYARgAAA_b2VnUAiWNLj0xeSOs499YHAMT2RdsuOqRIlQZ4vOzp66YAAAIBDQAAAMT2RdsuOqRIlQZ4vOzp66YAAAIJOgAAAA==",
    "createdDateTime": "2017-07-31T18:58:31.011909Z",
    "lastModifiedDateTime": "2017-07-31T18:58:35.418473Z",
    "changeKey": "xPZF2y46pEiVBni87OnrpgAAAAAJTg==",
    "categories": [],
    "originalStartTimeZone": "Eastern Standard Time",
    "originalEndTimeZone": "Eastern Standard Time",
    "uid": "040000008200E00074C5B7101A82E00800000000B23663002F0AD301000000000000000010000000B7C936D4C2FEC749824EE24B2FD7DA62",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Continuing Education Sync",
    "bodyPreview": "Higher Education Planning.\r\n\r\n\r\n\r\nJoin Microsoft Teams Online Meeting<https://teams.microsoft.com/l/meetup-join/19%3acc89e82c01e349d4998655891d93e12e%40thread.skype/1501527510806?tenantId=dcd219dd-bc68-4b9b-bf0b-4a33a796be35>",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isDraft": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "seriesMaster",
    "webLink": "https://outlook.office365.com/owa/?itemid=AQMkAGI5MWY5ZmUyLTJiNzYtNDE0ZC04OWEwLWM3M2FjYmM3NwAzZWYARgAAA%2Bb2VnUAiWNLj0xeSOs499YHAMT2RdsuOqRIlQZ4vOzp66YAAAIBDQAAAMT2RdsuOqRIlQZ4vOzp66YAAAIJOgAAAA%3D%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n</head>\r\n<body>\r\n<div>Higher Education Planning.</div>\r\n<div><br>\r\n<br>\r\n<br>\r\n<a href=\"https://teams.microsoft.com/l/meetup-join/19%3acc89e82c01e349d4998655891d93e12e%40thread.skype/1501527510806?tenantId=dcd219dd-bc68-4b9b-bf0b-4a33a796be35\">Join Microsoft Teams Online Meeting</a></div>\r\n</body>\r\n</html>\r\n"
    },
    "start": {
        "dateTime": "2017-08-15T14:30:00.0000000",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2017-08-15T15:30:00.0000000",
        "timeZone": "UTC"
    },
    "location": {
        "displayName": "HR Taskforce / Benefits"
    },
    "recurrence": {
        "pattern": {
            "type": "weekly",
            "interval": 1,
            "month": 0,
            "dayOfMonth": 0,
            "daysOfWeek": [
                "tuesday",
                "thursday"
            ],
            "firstDayOfWeek": "sunday",
            "index": "first"
        },
        "range": {
            "type": "noEnd",
            "startDate": "2017-08-15",
            "endDate": "0001-01-01",
            "recurrenceTimeZone": "Eastern Standard Time",
            "numberOfOccurrences": 0
        }
    },
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "accepted",
                "time": "2017-07-31T18:58:34.3298022Z"
            },
            "emailAddress": {
                "name": "Lidia Holloway",
                "address": "LidiaH@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "HR Taskforce",
                "address": "HRTaskforce@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Diego Siciliani",
                "address": "DiegoS@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Johanna Lorenz",
                "address": "JohannaL@contoso.com"
            }
        },
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Megan Bowen",
                "address": "MeganB@contoso.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "HR Taskforce",
            "address": "HRTaskforce@contoso.com"
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get event",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


