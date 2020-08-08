---
title: "Enable an event as an online meeting in an Outlook calendar"
description: "In an organization that supports online meeting providers, administrators can set up Outlook calendars to support meetings that use these providers."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Enable an event as an online meeting in an Outlook calendar 

Use the Outlook calendar API to organize an event where meeting invitees can click a join URL, and attend the meeting online in Microsoft Teams or Skype.

In an organization that supports online meeting providers, administrators can set up Outlook calendars to support meetings that use these providers, with one of these providers being the default provider. You can [create](#create-and-enable-a-meeting-online) or [update](#update-a-meeting-to-enable-it-online) an [event](/graph/api/resources/event) in Outlook and allow attendees to join the meeting online using a supported provider. You can conveniently [get the online meeting information](#get-information-to-join-meeting-online) of the **event**, including the URL to join the meeting. 

> **Note** The calendar API lets you conveniently set up an online meeting in an Outlook calendar where attendees can click to join the meeting and continue their experience in Teams or Skype. For a more customized, richer integration with Teams or Skype, use the cloud communications API. See [Choose an API in Microsoft Graph to create and join online meetings](choose-online-meeting-api.md) for more information.

## Calendars and online meeting providers

An organization that supports any of the following online meeting providers can set up Outlook calendars and enable organizing meetings online:

- Microsoft Teams, acquired as part of a Microsoft 365 business or enterprise suite
- Skype
- Skype for Business (which is being [superceded by Microsoft Teams](https://www.microsoft.com/microsoft-365/previous-versions/skype-for-business-online))

Look for the **allowedOnlineMeetingProviders** and **defaultOnlineMeetingProvider** properties to verify if an Outlook [calendar](/graph/api/resources/calendar) supports any online meeting providers. The following example shows the signed-in user's default calendar supports two providers, Microsoft Teams and Skype for Business, and uses Microsoft Teams as the default online meeting provider. 

### Example: Find whether a calendar supports any online meeting provider

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_calendar_support_for_online_meeting_providers"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/calendar
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calendar-support-for-online-meeting-providers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calendar-support-for-online-meeting-providers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-calendar-support-for-online-meeting-providers-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calendar-support-for-online-meeting-providers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
<!-- {
  "blockType": "response",
  "name": "get_calendar_support_for_online_meeting_providers",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/calendar/$entity",
    "id": "AQMkADAwAGVAAAJfygAAAA==",
    "name": "Calendar",
    "color": "auto",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAAACOg==",
    "canShare": true,
    "canViewPrivateItems": true,
    "canEdit": true,
    "allowedOnlineMeetingProviders": [
        "teamsForBusiness",
        "skypeForBusiness"
    ],
    "defaultOnlineMeetingProvider": "teamsForBusiness",
    "isTallyingResponses": true,
    "isRemovable": false,
    "owner": {
        "name": "Alex Wilber",
        "address": "AlexW@contoso.OnMicrosoft.com"
    }
}
```

## Create and enable a meeting online

You can create a meeting and allow attendees to join the meeting online, by setting **isOnlineMeeting** to `true`, and **onlineMeetingProvider** to one of the providers supported by the parent calendar. The following example creates a meeting in the signed-in user's default calendar, and enables attendees to join the meeting via Microsoft Teams. The response includes an **event** with online meeting information specified in the **onlineMeeting** property.

> [!NOTE]
> Once you enable a meeting online, Microsoft Graph sets the meeting information in **onlineMeeting**. Subsequently, you cannot change the **onlineMeetingProvider** property, nor set **isOnlineMeeting** to `false` to disable the meeting online.

### Example: Create and make meeting available as an online meeting

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_meeting_enable_online"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/events
Prefer: outlook.timezone="Pacific Standard Time"
Content-type: application/json

{
  "subject": "Prep for customer meeting",
  "body": {
    "contentType": "HTML",
    "content": "Does this time work for you?"
  },
  "start": {
      "dateTime": "2019-11-20T13:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "end": {
      "dateTime": "2019-11-20T14:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "location":{
      "displayName":"Cordova conference room"
  },
  "attendees": [
    {
      "emailAddress": {
        "address":"AdeleV@contoso.OnMicrosoft.com",
        "name": "Adele Vance"
      },
      "type": "required"
    }
  ],
  "allowNewTimeProposals": true,
  "isOnlineMeeting": true,
  "onlineMeetingProvider": "teamsForBusiness"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-meeting-enable-online-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-meeting-enable-online-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-meeting-enable-online-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-meeting-enable-online-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
<!-- {
  "blockType": "response",
  "name": "create_meeting_enable_online",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
    "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAASBUEsA==\"",
    "id": "AAMkADAAABIGYDZAAA=",
    "createdDateTime": "2019-11-15T01:55:54.8022848Z",
    "lastModifiedDateTime": "2019-11-15T01:55:56.5162924Z",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAASBUEsA==",
    "categories": [],
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "iCalUId": "040000008200E00074C5B7101A82E0080000000076B29D94B32CD6010000000000000000100000005F31C591C3C328459653D025BD277439",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Prep for customer meeting",
    "bodyPreview": "Does this time work for you?\r\n________________________________________________________________________________\r\nJoin Microsoft Teams Meeting\r\n+1 323-555-0166   United States, Los Angeles (Toll)\r\nConference ID: 291 633 251#\r\nLocal numbers | Reset PIN | Lea",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "singleInstance",
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAABIGYDZAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "isOnlineMeeting": true,
    "onlineMeetingProvider": "teamsForBusiness",
    "allowNewTimeProposals": true,
    "recurrence": null,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes this time work for you?\r\n<div style=\"width:100%; height:20px\"><span style=\"white-space:nowrap; color:gray; opacity:.36\">________________________________________________________________________________</span>\r\n</div>\r\n<div class=\"me-email-text\" style=\"color:#252424; font-family:'Segoe UI','Helvetica Neue',Helvetica,Arial,sans-serif\">\r\n<div style=\"margin-top:24px; margin-bottom:10px\"><a class=\"me-email-headline\" href=\"https://teams.microsoft.com/l/meetup-join/19%3ameeting_ODkyNWFmNGYtZjBjYS00MDdlLTllOWQtN2E3MzJlNjM0ZWRj%40thread.v2/0?context=%7b%22Tid%22%3a%2298a79ebe-74bf-4e07-a017-7b410848cb32%22%2c%22Oid%22%3a%2264339082-ed84-4b0b-b4ab-004ae54f3747%22%7d\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"font-size:18px; font-family:'Segoe UI Semibold','Segoe UI','Helvetica Neue',Helvetica,Arial,sans-serif; text-decoration:underline; color:#6264a7\">Join\r\n Microsoft Teams Meeting</a> </div>\r\n<div>\r\n<div><a class=\"me-email-link\" href=\"tel:&#43;1 323-886-7531,,291633251# \" target=\"_blank\" rel=\"noreferrer noopener\" style=\"font-size:14px; text-decoration:none; color:#6264a7\">&#43;1 323-886-7531</a>\r\n<span style=\"font-size:12px\">&nbsp; United States, Los Angeles (Toll) </span></div>\r\n</div>\r\n<div style=\"margin-top:10px; margin-bottom:20px\"><span style=\"font-size:12px\">Conference ID:\r\n</span><span style=\"font-size:14px\">291 633 251# </span></div>\r\n<div style=\"margin-bottom:24px\"><a class=\"me-email-link\" target=\"_blank\" href=\"https://dialin.teams.microsoft.com/1f9a0550-737c-41bd-8c7d-4c81dc1c4070?id=291633251\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">Local\r\n numbers</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://mysettings.lync.com/pstnconferencing\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nReset PIN</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://aka.ms/JoinTeamsMeeting\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nLearn more about Teams</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://teams.microsoft.com/meetingOptions/?organizerId=64339082-ed84-4b0b-b4ab-004ae54f3747&amp;tenantId=98a79ebe-74bf-4e07-a017-7b410848cb32&amp;threadId=19_meeting_ODkyNWFmNGYtZjBjYS00MDdlLTllOWQtN2E3MzJlNjM0ZWRj@thread.v2&amp;messageId=0&amp;language=en-US\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nMeeting options</a> </div>\r\n<div style=\"font-size:14px; margin-bottom:4px\"></div>\r\n<div style=\"font-size:12px\"></div>\r\n</div>\r\n<div style=\"width:100%; height:20px\"><span style=\"white-space:nowrap; color:gray; opacity:.36\">________________________________________________________________________________</span>\r\n</div>\r\n</body>\r\n</html>\r\n"
    },
    "start": {
        "dateTime": "2019-11-20T13:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "end": {
        "dateTime": "2019-11-20T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
    },
    "location": {
        "displayName": "Cordova conference room",
        "locationType": "default",
        "uniqueId": "Cordova conference room",
        "uniqueIdType": "private"
    },
    "locations": [
        {
            "displayName": "Cordova conference room",
            "locationType": "default",
            "uniqueId": "Cordova conference room",
            "uniqueIdType": "private"
        }
    ],
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@contoso.OnMicrosoft.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.OnMicrosoft.com"
        }
    },
    "onlineMeeting": {
        "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_ODkyNWFmNGYtZjBjYS00MDdlLTllOWQtN2E3MzJlNjM0ZWRj%40thread.v2/0?context=%7b%22Tid%22%3a%2298a79ebe-74bf-4e07-a017-7b410848cb32%22%2c%22Oid%22%3a%2264339082-ed84-4b0b-b4ab-004ae54f3747%22%7d",
        "conferenceId": "291633251",
        "tollNumber": "+1 323-555-0166"
    }
}
```

## Get information to join meeting online

Attendees and organizers can use the **isOnlineMeeting** property to verify if an [event](/graph/api/resources/event) is enabled for online participation. They can use the **onlineMeetingProvider** property to determine the meeting provider, and the **onlineMeeting** property for connection information including **joinUrl**. 

> [!IMPORTANT]
> Access the URL to join a meeting using **joinUrl**, available via the **onlineMeeting** property of the **event**. Do not use the **onlineMeetingUrl** property of the **event** because **onlineMeetingUrl** will soon be deprecated.

### Example: Get online meeting information

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_event_online_meeting_info"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/events/AAMkADAGu0AABIGYDZAAA=?$select=isOnlineMeeting,onlineMeetingProvider,onlineMeeting
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-event-online-meeting-info-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-event-online-meeting-info-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-event-online-meeting-info-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-event-online-meeting-info-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
<!-- {
  "blockType": "response",
  "name": "get_event_online_meeting_info",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events(isOnlineMeeting,onlineMeetingProvider,onlineMeeting)/$entity",
    "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAASBUExA==\"",
    "id": "AAMkADAGu0AABIGYDZAAA=",
    "isOnlineMeeting": true,
    "onlineMeetingProvider": "teamsForBusiness",
    "onlineMeeting": {
        "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_ODkyNWFmNGYtZjBjYS00MDdlLTllOWQtN2E3MzJlNjM0ZWRj%40thread.v2/0?context=%7b%22Tid%22%3a%2298a79ebe-74bf-4e07-a017-7b410848cb32%22%2c%22Oid%22%3a%2264339082-ed84-4b0b-b4ab-004ae54f3747%22%7d",
        "conferenceId": "291633251",
        "tollNumber": "+1 323-555-0166"
    }
}
```


## Update a meeting to enable it online
You can change an existing **event** to make it available as an online meeting, by setting **isOnlineMeeting** to `true`, and **onlineMeetingProvider** to one of the online meeting providers supported by the parent calendar. The response includes the updated **event** with the corresponding online meeting information specified in the **onlineMeeting** property.

> [!NOTE]
> Once you enable a meeting online, Microsoft Graph sets the meeting information in **onlineMeeting**. Subsequently, you cannot change the **onlineMeetingProvider** property, nor set **isOnlineMeeting** to `false` to disable the meeting online.

### Example: Update a meeting to make it available as an online meeting

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_meeting_online"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/me/events/AAMkADAGu0AABIGYDaAAA=

{
  "isOnlineMeeting": true,
  "onlineMeetingProvider": "teamsForBusiness"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-meeting-online-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-meeting-online-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-meeting-online-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-meeting-online-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
<!-- {
  "blockType": "response",
  "name": "update_meeting_online",
  "truncated": true,
  "@odata.type": "microsoft.graph.event"
} -->
```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
    "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAASBUFEA==\"",
    "id": "AAMkADAGu0AABIGYDaAAA=",
    "createdDateTime": "2019-11-15T02:13:38.5558455Z",
    "lastModifiedDateTime": "2019-11-15T02:15:00.0654529Z",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAASBUFEA==",
    "categories": [],
    "originalStartTimeZone": "Pacific Standard Time",
    "originalEndTimeZone": "Pacific Standard Time",
    "iCalUId": "040000008200E00074C5B7101A82E00800000000CD93094B5A9BD501000000000000000010000000A16AF77C6F6C254EA13F69C3B2808B4A",
    "reminderMinutesBeforeStart": 15,
    "isReminderOn": true,
    "hasAttachments": false,
    "subject": "Price strategy",
    "bodyPreview": "Let's define our strategy.\r\n________________________________________________________________________________\r\nJoin Microsoft Teams Meeting\r\n+1 323-555-0166   United States, Los Angeles (Toll)\r\nConference ID: 275 984 951#\r\nLocal numbers | Reset PIN | Learn",
    "importance": "normal",
    "sensitivity": "normal",
    "isAllDay": false,
    "isCancelled": false,
    "isOrganizer": true,
    "responseRequested": true,
    "seriesMasterId": null,
    "showAs": "busy",
    "type": "singleInstance",
    "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAGu0AABIGYDaAAA%3D&exvsurl=1&path=/calendar/item",
    "onlineMeetingUrl": null,
    "isOnlineMeeting": true,
    "onlineMeetingProvider": "teamsForBusiness",
    "allowNewTimeProposals": true,
    "recurrence": null,
    "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
    },
    "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\n<div>Let's define our strategy.</div>\r\n<div style=\"width:100%; height:20px\"><span style=\"white-space:nowrap; color:gray; opacity:.36\">________________________________________________________________________________</span>\r\n</div>\r\n<div class=\"me-email-text\" style=\"color:#252424; font-family:'Segoe UI','Helvetica Neue',Helvetica,Arial,sans-serif\">\r\n<div style=\"margin-top:24px; margin-bottom:10px\"><a class=\"me-email-headline\" href=\"https://teams.microsoft.com/l/meetup-join/19%3ameeting_NTRkMWViMmEtNzcxNC00OTk3LWJjOTEtYTdhMDU3ZmJhYWFi%40thread.v2/0?context=%7b%22Tid%22%3a%2298a79ebe-74bf-4e07-a017-7b410848cb32%22%2c%22Oid%22%3a%2264339082-ed84-4b0b-b4ab-004ae54f3747%22%7d\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"font-size:18px; font-family:'Segoe UI Semibold','Segoe UI','Helvetica Neue',Helvetica,Arial,sans-serif; text-decoration:underline; color:#6264a7\">Join\r\n Microsoft Teams Meeting</a> </div>\r\n<div>\r\n<div><a class=\"me-email-link\" href=\"tel:&#43;1 323-886-7531,,275984951# \" target=\"_blank\" rel=\"noreferrer noopener\" style=\"font-size:14px; text-decoration:none; color:#6264a7\">&#43;1 323-886-7531</a>\r\n<span style=\"font-size:12px\">&nbsp; United States, Los Angeles (Toll) </span></div>\r\n</div>\r\n<div style=\"margin-top:10px; margin-bottom:20px\"><span style=\"font-size:12px\">Conference ID:\r\n</span><span style=\"font-size:14px\">275 984 951# </span></div>\r\n<div style=\"margin-bottom:24px\"><a class=\"me-email-link\" target=\"_blank\" href=\"https://dialin.teams.microsoft.com/1f9a0550-737c-41bd-8c7d-4c81dc1c4070?id=275984951\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">Local\r\n numbers</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://mysettings.lync.com/pstnconferencing\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nReset PIN</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://aka.ms/JoinTeamsMeeting\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nLearn more about Teams</a> | <a class=\"me-email-link\" target=\"_blank\" href=\"https://teams.microsoft.com/meetingOptions/?organizerId=64339082-ed84-4b0b-b4ab-004ae54f3747&amp;tenantId=98a79ebe-74bf-4e07-a017-7b410848cb32&amp;threadId=19_meeting_NTRkMWViMmEtNzcxNC00OTk3LWJjOTEtYTdhMDU3ZmJhYWFi@thread.v2&amp;messageId=0&amp;language=en-US\" rel=\"noreferrer noopener\" style=\"font-size:12px; text-decoration:none; color:#6264a7\">\r\nMeeting options</a> </div>\r\n<div style=\"font-size:14px; margin-bottom:4px\"></div>\r\n<div style=\"font-size:12px\"></div>\r\n</div>\r\n<div style=\"width:100%; height:20px\"><span style=\"white-space:nowrap; color:gray; opacity:.36\">________________________________________________________________________________</span>\r\n</div>\r\n</body>\r\n</html>\r\n"
    },
    "start": {
        "dateTime": "2019-11-18T23:00:00.0000000",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2019-11-19T00:00:00.0000000",
        "timeZone": "UTC"
    },
    "location": {
        "displayName": "Conf Room Baker",
        "locationType": "conferenceRoom",
        "uniqueId": "Baker@contoso.onmicrosoft.com",
        "uniqueIdType": "directory"
    },
    "locations": [
        {
            "displayName": "Conf Room Baker",
            "locationType": "conferenceRoom",
            "uniqueId": "Baker@contoso.onmicrosoft.com",
            "uniqueIdType": "directory"
        }
    ],
    "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@contoso.OnMicrosoft.com"
            }
        }
    ],
    "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.OnMicrosoft.com"
        }
    },
    "onlineMeeting": {
        "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_NTRkMWViMmEtNzcxNC00OTk3LWJjOTEtYTdhMDU3ZmJhYWFi%40thread.v2/0?context=%7b%22Tid%22%3a%2298a79ebe-74bf-4e07-a017-7b410848cb32%22%2c%22Oid%22%3a%2264339082-ed84-4b0b-b4ab-004ae54f3747%22%7d",
        "conferenceId": "275984951",
        "tollNumber": "+1 323-555-0166"
    }
}
```



## See also
- For information on Microsoft Teams interoperability with Microsoft 365, see:
  - [How Exchange and Microsoft Teams interact](/microsoftteams/exchange-teams-interact)
  - [Setting your coexistence and upgrade settings](/microsoftteams/setting-your-coexistence-and-upgrade-settings)
- [Choose an API in Microsoft Graph to create and join online meetings](choose-online-meeting-api.md)
- [Finding possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
- [Getting the free/busy schedule for users and resources](outlook-get-free-busy-schedule.md)
- [Propose meeting times in an Outlook calendar (preview)](outlook-calendar-meeting-proposals.md)
- [Scheduling repeating appointments as recurring events in Outlook](outlook-schedule-recurring-events.md)
