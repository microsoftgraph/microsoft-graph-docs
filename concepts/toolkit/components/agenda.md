---
title: "Agenda component in the Microsoft Graph Toolkit"
description: "The mgt-agenda web component is used to represent events in a user or group calendar."
localization_priority: Normal
author: nmetulev
---

# Agenda component in the Microsoft Graph Toolkit

The `mgt-agenda` web component represents events in a user or group calendar. By default, the calendar displays the current signed in user events for the current day. The component can also use any endpoint that returns events from Microsoft Graph.

## Example

The following example shows the signed-in user's calendar events displayed using the `mgt-agenda` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-agenda--simple&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-agenda--simple&source=docs)

## Properties

By default, the `mgt-agenda` component fetches events from the `/me/calendarview` endpoint and displays events for the current day. There are several properties you can use to change this behavior.

| Attribute | Property | Description |
| --- | --- | --- |
| date | date | A string that represents the start date of the events to fetch from Microsoft Graph. Value should be in a format that can be parsed by the [Date constructor](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) - value has no effect if `event-query` attribute is set. |
| days | days | A number of days to fetch from Microsoft Graph - default is 3 - value has no effect if `event-query` attribute is set. |
| show-max | showMax | A number to indicate the maximum number of events to show. The default value is not set (no maximum). |
| group-id | groupId | A string ID for a group calendar to use instead of the current signed in user's calendar. |
| event-query | eventQuery | A string that represents an alternative query to be used when fetching events from Microsoft Graph. Optionally, add the delegated scope at the end of the string by delimiting it with `|` (`/groups/GROUP-ID-GUID/calendar/calendarView | group.read.all`). |
| events | events | An array of events to get or set the list of events rendered by the component - use this property to access the events loaded by the component. Set this value to load your own events - if value is set by developer, the `date`, `days`, or `event-query` attributes have no effect. |
| group-by-day | groupByDay | A Boolean value to group events by day - by default events are not grouped. |
| preferred-timezone | preferredTimezone | Name of the preferred time zone to use when retrieving events from Microsoft Graph; for example, `Pacific Standard Time`. By default, this attribute uses the UTC time zone. The preferred time zone for the current user can be retrieved by calling the `me/mailboxSettings` endpoint and reading the value of the **timeZone** property. |

The following example changes the behavior of the component to fetch data for a specific date and up to three days.

```html
<mgt-agenda
  group-by-day
  date="May 7, 2019"
  days="3"
  ></mgt-agenda>
```

The following example changes the behavior of the component to fetch data from a specific query.

```html
<mgt-agenda
  event-query="/me/events?orderby=start/dateTime"
  ></mgt-agenda>
```

## Methods
| Method | Description |
| --- | --- |
| reload() | Call the method to reload the component with potential new data based on its properties. |

## CSS custom properties

The `mgt-agenda` component defines these CSS custom properties

```css
mgt-agenda {
  --event-box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.092);
  --event-margin: 0px 10px 14px 10px;
  --event-padding: 8px 0px;
  --event-background-color: #ffffff;
  --event-border: solid 2px rgba(0, 0, 0, 0);

  --agenda-header-margin: 40px 10px 14px 10px;
  --agenda-header-font-size: 24px;
  --agenda-header-color: #333333;

  --event-time-font-size: 12px;
  --event-time-color: #000000;

  --event-subject-font-size: 19px;
  --event-subject-color: #333333;

  --event-location-font-size: 12px;
  --event-location-color: #000000;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Templates

The `mgt-agenda` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following:

| Data type | Data context | Description |
| --- | --- | --- |
| `default` | `events`: list of event objects | The default template replaces the entire component with your own. |
| `event` | `event`: event object | The template used to render each event. |
| `event-other` | `event`: event object | The template used to render additional content for each event. |
| `header` | `header`: string | The template used to render the header for each day. |
| `loading` | No data context is passed | The template used when data is loading. |
| `no-data` | No data context is passed | The template used when no events are available. |

The following examples illustrates how to use the `event` template:

```html
<mgt-agenda>
  <template data-type="event">
    <button class="eventButton">
      <div class="event-subject">{{ event.subject }}</div>
      <div data-for="attendee in event.attendees">
        <mgt-person
          person-query="{{ attendee.emailAddress.name }}"
          view="twolines">
        </mgt-person>
      </div>
    </button>
  </template>
  <template data-type="no-data">
    There are no events found!
  </template>
</mgt-agenda>
```

To learn more, see [templates](../customize-components/templates.md).

## Events

The following events are fired from the control.

| Event | Description |
| --- | --- |
| eventClick | The user clicks or taps an event.|

## Permissions

This component uses the following Microsoft Graph APIs and permissions:

| Resource | Permission |
| - | - |
| [/me/calendarview](/graph/api/calendar-list-calendarview) | Calendars.Read |

The component allows you to specify a different Microsoft Graph query to call (such as `/groups/{id}/calendar/calendarView`). In this case, append the permission to the end of the string, delimited by `|`.

When using the default template and default `renderAttendees` template, additional APIs and permissions are required. The default template for this component uses a [mgt-people](people.md) component for events that have attendees, which requires the following.

| Resource | Permission |
| - | - |
| [/users](/graph/api/user-list) | Users.ReadBasic.All |
| [/me/calendarview](/graph/api/user-list-people) | People.Read |
| [/me/calendarview](/graph/api/user-list-contacts) | Contacts.Read |

## Authentication

The login control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected` render* methods for override in component extensions.

| Method | Description |
| - | - |
| renderLoading | Renders a loading state while the component loads. |
| renderNoData | Renders an empty data state. |
| renderGroups | Sorts event data into groups and renders them with group headers. |
| renderHeader | Renders a group header. |
| renderEvents | Renders a list of event objects. |
| renderEvent | Renders a singular event and all of its parts.
| renderTitle | Renders the event title part. |
| renderLocation | Renders the event location part. |
| renderAttendees | Renders the event attendees part. |
| renderOther | Renders additional event content. |
