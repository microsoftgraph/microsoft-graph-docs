---
title: "Get shared or delegated Outlook calendar and its events"
description: "In Outlook, a calendar owner can share a calendar with other users and let them view or modify events in that calendar; the calendar can be a custom calendar or the primary calendar. The owner can also grant a delegate to act on their behalf, to receive or respond to meeting requests, or create or change items in the primary calendar of the email account."
author: "juforan"
localization_priority: Priority
ms.prod: "outlook"
---

# Get shared or delegated Outlook calendar and its events

In Outlook, a calendar owner can share a calendar with other users and let them view or modify events in that calendar; the shared calendar can be the owner's primary calendar or a custom calendar created by the owner. The owner can also grant a delegate to their primary calendar and act on their behalf, to receive or respond to meeting requests, or create or change items in the primary calendar.

Programmatically, Microsoft Graph supports reading and writing events in calendars that have been shared by other users, as well as reading the shared calendars, and updating the calendar name for sharees. The support also applies to calendars that have been delegated. The rest of this article describes reading events in a shared or delegated calendar. For creating events, refer to [Create Outlook events in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md).

## Sharee: Get a shared calendar or its events directly from calendar owner's mailbox

The three examples below use this scenario: in Outlook, Alex has shared his primary calendar with Megan and given Megan read permissions. If Megan signs into your app and provides _delegated permissions_ (Calendars.Read.Shared or Calendars.ReadWrite.Shared), on behalf of Megan, your app can access Alex' primary calendar and its events directly from Alex' mailbox.

The three examples specify the owner's identity (Alex' user ID or user principal name) and the `calendar` shortcut. They access calendar and event IDs that correspond to only the owner's mailbox. Specifying these calendar and event IDs in the sharee's mailbox (Megan's user ID or user principal name) would return an error. To use calendar and event IDs that correspond to the sharee's mailbox, see [Sharee: Get shared, custom calendar or its events from sharee's mailbox](#sharee-get-shared-custom-calendar-or-its-events-from-sharees-mailbox). 

> **Note**:
> The sharing permissions (Calendars.Read.Shared or Calendars.ReadWrite.Shared) allow you to read or write events in a shared or delegated calendar. They do not support [subscribing to change notifications](webhooks.md) on items in such folders. To set up change notification subscriptions on events in a shared, delegated, or any other user or resource calendar in the tenant, use the application permission, Calendars.Read.

### Megan: Get the shared, primary calendar directly from Alex' mailbox

Signed in as Megan, get the primary calendar that Alex has shared with Megan, directly from Alex' mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/users/{Alex-userId | Alex-userPrincipalName}/calendar
```

On successful completion, you'll get HTTP 200 OK and a [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) instance that represents Alex' shared, primary calendar, in Alex' mailbox.

### Megan: Get an event in the shared, primary calendar directly from Alex' mailbox

Signed in as Megan, your app can get a specific event in the primary calendar that Alex has shared with Megan, directly from Alex' mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/users/{Alex-userId | Alex-userPrincipalName}/calendar/events/{id}
```

On successful completion, you'll get HTTP 200 OK and the [event](/graph/api/resources/event?view=graph-rest-1.0) instance identified by `{id}` in Alex' primary calendar, directly from Alex' mailbox.

### Megan: Get all the events in the shared, primary calendar from Alex' mailbox

Signed in as Megan, get all the events in the primary calendar that Alex has shared with Megan, directly from Alex' mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/v1.0/users/{Alex-userId | Alex-userPrincipalName}/calendar/events
```

On successful completion, you'll get HTTP 200 OK and a collection of [event](/graph/api/resources/event?view=graph-rest-1.0) instances in Alex' primary calendar, directly from Alex' mailbox.

The same GET capabilities apply if Alex has delegated Megan access to Alex' primary calendar, or if Alex has delegated Megan his entire mailbox.

If Alex has not shared nor delegated his primary calendar with Megan, specifying Alex’s user ID or user principal name in the preceding GET operations will return an error. 


## Sharee: Get shared, custom calendar or its events from sharee's mailbox

If Alex has shared a _custom_ calendar (as an example, a calendar named "Kids parties") with Adele, and Adele has provided delegated permissions (Calendars.Read or Calendars.ReadWrite), your app can get the events or calendar from the local copy of Alex' calendar in Adele's mailbox, as described below.

1. Signed in as Adele, use either of the following requests to get all the calendars that Adele has access to, including the shared custom calendar.

    <!-- {
      "blockType": "request",
      "name": "get_all_Adele_calendars"
    }-->
    ```http
    GET https://graph.microsoft.com/v1.0/me/calendars
    GET https://graph.microsoft.com/v1.0/users/{Adele-userId | Adele-userPrincipalName}/calendars
    ```

    A successful response includes the response code HTTP 200, and the collection of calendars that Adele has access to, including the calendar ("Kids parties") that has the owner name as "Alex Wilber" as the second calendar in the response. For a sharee, Adele, the **canShare** property of the shared calendar is always false.

    <!-- {
      "blockType": "response",
      "name": "get_all_Adele_calendars",
      "truncated": true,
      "@odata.type": "microsoft.graph.calendar",
      "isCollection": true
    } -->
    ```http
    HTTP/1.1 200 OK
    Content-type: application/json

    {
        "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('d3b9214b-dd8b-441d-b7dc-c446c9fa0e69')/calendars",
        "value": [
            {
                "id": "AQMkADU5NAAAJMjAAAAA==",
                "name": "Calendar",
                "color": "auto",
                "changeKey": "NDznl+Uh50WkanaCOKHkaQAAAAACXQ==",
                "canShare": true,
                "canViewPrivateItems": true,
                "canEdit": true,
                "owner": {
                    "name": "Adele Vance",
                    "address": "AdeleV@contoso.OnMicrosoft.com"
                }
            },
            {
                "id": "AAMkADAABf0JlyAAA=",
                "name": "Kids parties",
                "color": "lightYellow",
                "changeKey": "NDznl+Uh50WkanaCOKHkaQAAYumJRQ==",
                "canShare": false,
                "canViewPrivateItems": false,
                "canEdit": false,
                "owner": {
                    "name": "Alex Wilber",
                    "address": "AlexW@contoso.OnMicrosoft.com"
                }
            }
        ]
    }
    ```

2. Signed in as Adele, get the shared calendar, or get one or more events in the shared calendar, using the second calendar ID in the response from step 1. The IDs of the shared calendar and its event correspond to the local copy of Alex' calendar in Adele's mailbox.

    <!-- { "blockType": "ignored" } -->
    ```http
    GET https://graph.microsoft.com/v1.0/me/calendars/AAMkADAABf0JlyAAA=
    GET https://graph.microsoft.com/v1.0/users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADAABf0JlyAAA=

    GET https://graph.microsoft.com/v1.0/me/calendars/AAMkADAABf0JlyAAA=/events/{id}
    GET https://graph.microsoft.com/v1.0/users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADAABf0JlyAAA=/events/{id}

    GET https://graph.microsoft.com/v1.0/me/calendars/AAMkADAABf0JlyAAA=/events
    GET https://graph.microsoft.com/v1.0/users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADAABf0JlyAAA=/events
    ```

On successful completion, you'll get HTTP 200 OK and the requested event, events, or calendar that Alex has shared with Adele.


## Next steps

Find out more about:

- [Create Outlook events in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md)
- [Share or delegate a calendar in Outlook (preview)](outlook-share-or-delegate-calendar.md)
- [Why integrate with Outlook calendar](outlook-calendar-concept-overview.md)
- The [calendar API](/graph/api/resources/calendar?view=graph-rest-1.0) in Microsoft Graph v1.0.
