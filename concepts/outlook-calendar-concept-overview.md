---
title: "Outlook calendar API overview"
description: "Outlook calendar is part of the Outlook messaging hub in Microsoft 365 that also lets you manage emails and contacts, find information about users in an organization,"
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
ms.custom: scenarios:getting-started
---

# Outlook calendar API overview

Outlook calendar is part of the Outlook messaging hub in Microsoft 365 that also lets you manage emails and contacts, find information about users in an organization,
initiate online conversations, share files, and collaborate in groups.

> [!VIDEO https://www.youtube-nocookie.com/embed/_ST4nyz4g9E]

## Why integrate with Outlook calendar?
The rich features of Outlook calendar and its API open up many app opportunities. The following sections list a few of them.

## Reach hundreds of millions of customers and build rich scenarios

Many millions of customers use Outlook calendar as part of an integrated hub that lets them effectively communicate and get things done. They can set up meetings, manage emails, find information about contacts and other users, and initiate conversations or online meetings all in one place, be it on the web, mobile, or desktop. Microsoft Graph not only connects apps to the calendar, mail, and contacts data of these customers, it enables apps to [integrate with the best of Microsoft 365](overview-major-services.md) and support a wide range of scenarios that enhance productivity and collaboration.

Most features in the Outlook calendar API apply to calendars in personal Microsoft accounts and work or school accounts.

<sup>**</sup> Denotes features below that are specifically applicable to Outlook calendars in only work or school accounts.

## Automate appointment organization and calendaring

Customers like how Outlook lets them organize their time for work, family, and personal activities. Microsoft Graph REST API keeps close parity with the customer experience, letting apps create, manage, and respond to events just as naturally:

- In Outlook, customers can create individual calendars for work, family, and other purposes, and organize them in calendar groups. They can turn on the free **Birthdays** and **Holiday** calendar to remind them of contacts' birthdays and local holidays. They can add calendars that match their interests, such as calendars for sport teams and TV programs. Customers can select and overlay calendars, and see their events in the same view. Through the calendar API, your app can similarly organize [calendars](/graph/api/resources/calendar?view=graph-rest-1.0) in [calendar groups](/graph/api/resources/calendargroup?view=graph-rest-1.0), and interact with  interesting calendars just like any other **calendar** in the user's mailbox.

- Outlook customers can apply categories to events, messages, contacts, tasks, and group posts in a consistent way to enhance organization and discovery. The calendar API lets you access and [define a user's master list of categories](/graph/api/outlookuser-post-mastercategories?view=graph-rest-1.0), which opens up additional creative scenarios. For example, an athletic club can organize a sports tournament and offer an app that differentiates emails and events for each sport with their own color category. For last-minute news such as unforeseen timetable changes, the app can also set the **importance** property of those events and emails to alert customers.

- In a calendar folder, you can [create](/graph/api/user-post-events?view=graph-rest-1.0) and [update](/graph/api/event-update?view=graph-rest-1.0) single instance [events](/graph/api/resources/event?view=graph-rest-1.0), or [schedule and maintain recurring events](outlook-schedule-recurring-events.md). You can let your customers respond to [meeting requests](/graph/api/resources/eventmessage?view=graph-rest-1.0), and [snooze](/graph/api/event-snoozereminder?view=graph-rest-1.0) or [dismiss](/graph/api/event-dismissreminder?view=graph-rest-1.0) [reminders](/graph/api/resources/reminder?view=graph-rest-1.0) using the associated **event** navigation property.

## Help customers stay synchronized and navigate their day

The calendar API helps customers navigate their day and enhance productivity:

<!-- change link to notifications to the concept topic once it's created. In general, try staying in the conceptual level in these overview topics, if conceptual topics are available for the link destination.
-->

- You can keep the app local store synchronized by subscribing to [change notifications](/graph/api/resources/webhooks?view=graph-rest-1.0) and [tracking changes to events](delta-query-events.md) in a user's calendar.
- You can display the user's agenda based on a light-weight [reminder view](/graph/api/user-reminderview?view=graph-rest-1.0).
- You can let the user conveniently [accept](/graph/api/event-accept?view=graph-rest-1.0) and take a meeting online through its **webLink** property, which opens the meeting in Outlook on the web.
- Users can also [tentatively accept](/graph/api/event-tentativelyaccept?view=graph-rest-1.0) or [decline](/graph/api/event-decline?view=graph-rest-1.0) a meeting while on the go.

## Enhance collaboration

- In Outlook, customers can share calendars with one another and give permissions to read, write, or delete calendar contents. Or, they can delegate a calendar to let another customer respond to meeting requests on their behalf. Programmatically, while you cannot initiate a share or delegate action on behalf of a user, you can use a set of properties to verify the sharing status and enable scenarios around shared or delegated calendars: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, and **isSharedWithMe**.
- The calendar API lets you get calendar items of the signed-in user, or users who have shared or delegated their calendars to the signed-in user. For example, if Garth has shared a calendar with John, or if Garth has delegated access to John, then [delegated permissions](auth/auth-concepts.md#microsoft-graph-permissions) from John would give you read access to Garth's shared calendar and contents as well.
- Microsoft 365 groups make it convenient for group members to collaborate and access group conversations and calendars right in Outlook. Aside from a few minor differences between group calendars and user calendars, the calendar API lets you interact with group calendars just like user calendars. See the [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) resource for more information<sup>**</sup>.

## Schedule smart

Outlook and the calendar API offer many smart conveniences to schedule events:

- Through Outlook calendar app settings, customers can enable automatic adding of events from emails, such as flight, hotel, or dining reservations, and billing invoices. Once added, you can interact with these events just like any other [event](/graph/api/resources/event?view=graph-rest-1.0) objects in the user's mailbox, and build creative scenarios upon this Outlook capability.
- In Outlook, booking a meeting room is as straight-forward as adding an attendee to the **event**. The calendar API represents a meeting room as an [emailAddress](/graph/api/resources/emailaddress?view=graph-rest-1.0) object. You can [get rooms](/graph/api/place-list#example-1-list-all-the-rooms-defined-in-the-tenant) and [get room lists](/graph/api/place-list#example-2-list-all-the-room-lists-defined-in-the-tenant) that are available in a tenant. To organize a meeting in a specific room, assign it to the **location** property of the **event**.<sup>**</sup>
- You can [look up the free/busy information for users and resources](outlook-get-free-busy-schedule.md) for a specific time period. You can then use this data to apply to different scenarios including resource planning and event scheduling.<sup>**</sup>
- If your scenario involves scheduling meetings at an optimal time, you can consider [using findMeetingTimes to identify possible times or locations to meet](findmeetingtimes-example.md). The [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-1.0) function considers the free/busy status of the attendees, and any preferred rooms, time, and other constraints you provide. If the first try doesn't return a common meeting time, check the reason, adjust your criteria and call **findMeetingTimes** again.<sup>**</sup>

## Teleconference across multiple locations and time zones

With globalization, today's business meetings often involve attendees participating from different locations and time zones. Here's how you can use the calendar API to manage such meetings:

- As an example in Outlook, customers can organize a meeting and include attendees joining from a conference room in Seattle, a coffee shop in Paris, and a home office in China. Programmatically, the event **locations** property, which is a collection of [location](/graph/api/resources/location?view=graph-rest-1.0) objects, can reflect this level of details in **displayName** and **locationType** for each **location**. See an [example](/graph/api/event-get?view=graph-rest-1.0#request-2).
- Outlook gives customers the flexibility to organize events and specify a time zone for each of the start and end times of an event. To support this flexibility, by default, the calendar API returns the **start** and **end** times of an **event** in UTC, and provides the **originalStartTimeZone** and **originalEndTimeZone** properties to note the time zones used when the event was created.
- Alternatively, you can specify the `Prefer: outlook.timezone="{time zone name}"` header so that a GET event operation returns **start** and **end** in the time zone you specify. The time zone name can be any of those supported by Windows, as well as those on this [list](/graph/api/resources/datetimetimezone?view=graph-rest-1.0). See an [example](/graph/api/event-get?view=graph-rest-1.0#request-1) of the `Prefer` header in use.
- Organizations that support online meeting providers, such as Microsoft Teams and Skype, can set up Outlook calendars to use these providers. You can conveniently [organize or attend events in these calendars as online meetings](outlook-calendar-online-meetings.md).

## Build apps with location awareness and provide intelligent context

Use the [places API](/graph/api/resources/place) to help users navigate to a place, or provide an intelligent solution based on the user's location. The following are some example scenarios:

- Incorporate place details in calendar events to help users navigate their day and enhance productivity.<sup>**</sup>
- Catering applications can use the places API to assist venue navigation and set up.<sup>**</sup>
- Automate emailing pre-meeting details to attendees and include a map on how to get to a room.<sup>**</sup>
- Set up reception bot assistants to provide information about specific rooms in a building.<sup>**</sup> 

Depending on your app scenario, you can use the places API within the context of Outlook, or independent of Outlook.

## Take advantage of social intelligence and other developer conveniences in Microsoft Graph

Use the [people API](people-example.md) in Microsoft Graph to connect to [people data](/graph/api/resources/person?view=graph-rest-1.0) which is based on a user's communication and collaboration patterns, and business relationships. You can implement controls such as a people picker, and suggest persons relevant to the user when organizing meetings on the user's behalf.

Save overhead in storing and managing app data in external data stores. With Microsoft Graph, you can store custom app data as [open extensions](extensibility-overview.md#open-extensions) in individual resource instances. If you require the data to be typed, or would like to be able to share the typed schema, you can store custom app data in [schema extensions](extensibility-overview.md#schema-extensions).

## Where is the data?

[!INCLUDE [outlook-mailbox-type-support](../includes/outlook-mailbox-type-support.md)]

## API reference

Looking for the API reference for this service?

- [Outlook calendar API in Microsoft Graph v1.0](/graph/api/resources/calendar?view=graph-rest-1.0)
- [Outlook calendar API in Microsoft Graph beta](/graph/api/resources/calendar?view=graph-rest-beta)

## Next steps

- Select and try calendar sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fevents&version=v1.0).
- Learn about:
  - [Finding possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
  - [Getting the free/busy schedule for users and resources](outlook-get-free-busy-schedule.md)
  - [Propose meeting times in an Outlook calendar (preview)](outlook-calendar-meeting-proposals.md)
  - [Use Outlook to organize or attend meetings online (preview)](outlook-calendar-online-meetings.md)
  - [Scheduling repeating appointments as recurring events in Outlook](outlook-schedule-recurring-events.md)
  - [Getting shared events](outlook-get-shared-events-calendars.md)
  - [Attaching large files to Outlook messages or events](outlook-large-attachments.md)
  - [Getting immutable identifiers for Outlook resources](outlook-immutable-id.md)
- Take a look at the Outlook [calendar API](/graph/api/resources/calendar?view=graph-rest-1.0) reference.

<!-- Replace the last item with the calendar API overview when it's published.
-->
