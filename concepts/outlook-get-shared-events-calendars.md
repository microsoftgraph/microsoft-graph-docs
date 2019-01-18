---
title: "Get Outlook events in a shared or delegated calendar"
description: "In Outlook, customers can share a calendar with other users and let them view or modify events in that calendar. Customers can also grant a delegate to act on their  behalf, to receive or respond to meeting requests, or create or change items in the calendar."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Get Outlook events in a shared or delegated calendar

In Outlook, customers can share a calendar with other users and let them view or modify events in that calendar. Customers can also grant a delegate to act on their  behalf, to receive or respond to meeting requests, or create or change items in the calendar.

Programmatically, Microsoft Graph supports getting events in calendars that have been shared by other users, as well as getting the shared calendars themselves. The support also applies to calendars that have been delegated.

As an example, Garth has shared with John his default calendar and given John read access. If John has signed into your app and provided delegated permissions (Calendars.Read.Shared or Calendars.ReadWrite.Shared), your app will be able to access Garth's default calendar and events in that calendar as described below.

> **Note** The sharing permissions (Calendars.Read.Shared or Calendars.ReadWrite.Shared) allow you to read or write events in a shared or delegated calendar. They do not support [subscribing to change notifications](webhooks.md) on items in such folders. To set up change notification subscriptions on events in a shared, delegated, or any other user or resource calendar in the tenant, use the application permission, Calendars.Read.

## Get an event in the shared calendar

You can get a specific event in Garth's shared default calendar:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/calendar/events/{id}
```

On successful completion, you'll get HTTP 200 OK and the [event](/graph/api/resources/event?view=graph-rest-1.0) instance identified by `{id}` from Garth's default calendar.

## Get all the events in the shared calendar

Get all the events in the default calendar that Garth has shared with John:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/calendar/events
```

On successful completion, you'll get HTTP 200 OK and a collection of [event](/graph/api/resources/event?view=graph-rest-1.0) instances in Garth's default calendar.

## Get the shared calendar

Get the default calendar that Garth has shared with John.

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/calendar
```

On successful completion, you'll get HTTP 200 OK and a [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) instance that represents Garth's default folder.

The same GET capabilities apply if Garth had delegated John further access to Garth's default calendar, or if Garth had delegated John his entire mailbox.

If Garth has not shared his default calendar with John, nor has he delegated his mailbox to John, specifying Garth’s user ID or user principal name in those GET operations will return an error. 


## Next steps

Find out more about:

- [Why integrate with Outlook calendar](outlook-calendar-concept-overview.md)
- The [calendar API](/graph/api/resources/calendar?view=graph-rest-1.0) in Microsoft Graph v1.0.
