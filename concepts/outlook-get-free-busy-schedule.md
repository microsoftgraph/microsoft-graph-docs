---
title: "Get free/busy schedule of users and resources"
description: "In a work or school setting, a common scenario is to see when a user is free for meeting, or to browse the availability of a team, room, or equipment for a time period."
author: "tariq-sharif"
localization_priority: Priority
ms.prod: "outlook"
---

# Get free/busy schedule of users and resources

In a work or school setting, a common scenario is to see when a user is free for meeting, or to browse the availability of a team, room, or equipment for a time period.

The [getSchedule](/graph/api/calendar-getschedule?view=graph-rest-1.0) action lets you get the availability information of one or more entities - users, distribution lists, or resources - for a specific period of time. 

## Example

A simple example is to find the free/busy schedule of a coworker, Alex, on a specific day, from 9am to 6pm, Pacific Standard Time:

<!-- {
  "blockType": "ignored",
  "name": "calendar_getSchedule_concept"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/calendar/getschedule 
Prefer: outlook.timezone="Pacific Standard Time"
Content-Type: application/json

{        
    "Schedules": ["AlexW@contoso.OnMicrosoft.com"],
    "StartTime": {
        "dateTime": "2018-08-06T09:00:00",
        "timeZone": "Pacific Standard Time"
    },
    "EndTime": {
        "dateTime": "2018-08-06T18:00:00",
        "timeZone": "Pacific Standard Time"
    },
    "availabilityViewInterval": "15"
}
```

**getSchedule** returns two schedule items that match existing events in Alex' default calendar, showing the start and end times of each event and its free/busy status. You can assume Alex is free for the remaining time in that date/time range.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.scheduleInformation",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.scheduleInformation)",
    "value":[
        {
            "scheduleId":"AlexW@contoso.OnMicrosoft.com",
            "availabilityView":"111111002222222200000000000000000000",
            "scheduleItems":[
                {
                    "status":"Tentative",
                    "start":{
                        "dateTime":"2018-08-06T09:00:00.0000000",
                        "timeZone":"Pacific Standard Time"
                    },
                    "end":{
                        "dateTime":"2018-08-06T10:30:00.0000000",
                        "timeZone":"Pacific Standard Time"
                    }
                },
                {
                    "status":"Busy",
                    "start":{
                        "dateTime":"2018-08-06T11:00:00.0000000",
                        "timeZone":"Pacific Standard Time"
                    },
                    "end":{
                        "dateTime":"2018-08-06T13:00:00.0000000",
                        "timeZone":"Pacific Standard Time"
                    }
                }
            ],
            "workingHours":{
                "daysOfWeek":[
                    "monday",
                    "tuesday",
                    "wednesday",
                    "thursday",
                    "friday"
                ],
                "startTime":"08:00:00.0000000",
                "endTime":"17:00:00.0000000",
                "timeZone":{
                    "@odata.type":"#microsoft.graph.customTimeZone",
                    "bias":480,
                    "name":"Customized Time Zone",
                    "standardOffset":{
                        "time":"02:00:00.0000000",
                        "dayOccurrence":1,
                        "dayOfWeek":"sunday",
                        "month":11,
                        "year":0
                    },
                    "daylightOffset":{
                        "daylightBias":-60,
                        "time":"02:00:00.0000000",
                        "dayOccurrence":2,
                        "dayOfWeek":"sunday",
                        "month":3,
                        "year":0
                    }
                }
            }
        }
    ]
}

```

Apart from the free/busy schedule and working hours of Alex, **getSchedule** also returns **availabilityView**, which is a merged view of Alex' availability for that day. The merged view is a string that consists of time slots covering that day, with each time slot indicating Alex' availability using the following convention: 

- `0`= free
- `1`= tentative
- `2`= busy
- `3`= out of office
- `4`= working elsewhere. 

By default, the length of each time slot is 30 minutes. This example uses the **availabilityViewInterval** property to customize the time slot to be 15 minutes.

## How does getSchedule compare with findMeetingTimes

The [findMeetingTimes](/graph/api/user-findmeetingtimes?view=graph-rest-1.0) action is similar to **getSchedule** in that both read the free/busy status and working hours of specified users and resources. The two actions differ in a few major ways.

### Application

**findMeetingTimes** applies certain business logic to suggest meeting times and locations, such as:

- Optional or mandatory attendance of each entity
- The nature of the requested activity for the time of the day
- The minimum attendance required for a quorum for a meeting

It is appropriate for scenarios that depend on [streamlining appointment booking](findmeetingtimes-example.md).

**getSchedule** simply returns the free/busy status of existing events in each of the requested calendars for a given time period, and assumes the remaining time in that time period to be free. You would then apply further business logic to make use of this data to complete your scenario.

### App-only support

**findmeetingtimes** supports only delegated scenarios which require a user to have signed in to the app. The app can read events in only the calendars that the signed-in user can access. This can include calendars that other users have delegated or shared with the signed-in user.

**getSchedule** supports both delegated and app-only scenarios. In the latter, an administrator consents the app to access all calendars without a signed-in user.

### Permissions
The least privileged permissions required by **findmeetingtimes** is Calendars.Read.Shared.

The least privileged permission required by **getSchedule** is Calendars.Read. 

### Version support

**findmeetingtimes** and **getSchedule** are both generally available and appropriate for use in production apps.


## Event data returned
The least privileged permission required by **getSchedule** for an app to get free/busy information is Calendars.Read. Depending on your app scenario, this can be consented by the signed-in user or administrator.

While the consented permission lets an app use **getSchedule** on the requested users' calendars, through Outlook, the requested user controls which event data, if any, that **getSchedule** returns. 

For example, **getSchedule** can return the free/busy status and working hours of the requested users, or it can also return the **subject**, **location**, and **isPrivate** properties of an event, provided that:

- The event is marked with low sensitivity level - `normal` or `personal` - 
AND one or more of the following conditions apply:

  - The requested user’s calendar settings allow the signed-in user to view subject lines and locations
  - The requested user’s calendar is shared with the signed-in user

These conditions apply regardless of whether the signed-in user is an administrator in the organization. The requested user has control over the event data returned.

## Time zone representation
By default, the start and end times of the returned schedule items are represented in UTC. You can use a `Prefer` header to specify a time zone appropriate for your app. As an example: 
```
Prefer: outlook.timezone="Pacific Standard Time"
```

## Limits and error conditions
Be aware of the following limits and error condition:

- **getSchedule** can support looking up free/busy information for up to 20 entities at once. This limit applies to the number of users identified individually or as members of a distribution list, and to the number of resources as well.
- The time period to look up must be less than 42 days.
- If **getSchedule** cannot identify a specified user or resource, it returns a single schedule item and indicates the error. 


## See also
- [Permissions reference](permissions-reference.md#calendars-permissions)
- [Find possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
