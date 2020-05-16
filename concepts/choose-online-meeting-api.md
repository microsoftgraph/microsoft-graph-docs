---
title: "Choose an API in Microsoft Graph to create and join online meetings"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Choose an API in Microsoft Graph to create and join online meetings

Microsoft Graph offers two API sets that can arrange and join online meetings on Microsoft Teams or Skype:

- [Calendar API](outlook-calendar-online-meetings.md): use the [event](/graph/api/resources/event) resource.
- [Cloud communications API](cloud-communications-online-meetings.md): use the [onlineMeeting](/graph/api/resources/onlineMeeting) resource.

## Considerations when choosing an API for your scenario

Choose the calendar API for a streamlined, built-in integration with Outlook calendar:
- Programmatic support:
  - Apps can directly create or update an event as an online meeting in the Outlook calendar, inserting a join-Teams-meeting blob in the Outlook calendar event.
  - Apps get properties for joining meeting over the Internet or by dialing in.
- The attendee UI experience with the resultant calendar event is in full parity with any event created through the Outlook UI:
  - Attendees can choose to meet online or in person.
  - Attendees can click in the join-Teams-meeting blob to join meeting over the Internet or by dialing in.
  - Attendees can use other rich features of Teams, including video conferencing and meeting lobby, if configured.

> **Note:** Integration with Outlook calendar assumes Outlook having been enabled for online meetings. [Verify](outlook-calendar-online-meetings.md#calendars-and-online-meeting-providers) the support before using the API.

Choose the cloud communications API for flexibility and broader programmatic support:
- The flexibility for apps to further integrate with line of business and other apps, in addition to Outlook calendar.
- Apps can provide the following capabilities for their users:
  - The flexibility to meet online instantly without scheduling on a calendar.
  - Locale-based join information (preview).
  - Joining meeting over the Internet or by dialing in.
  - Video-conferencing.
  - Additional security features such as meeting lobby and automating attendee admission (preview).
  - Associating meeting with a Microsoft Teams chat.

## Comparing the APIs

The following table details the differences at the API level. 


| Online meeting feature | Calendar API (event resource) | Cloud communication API (onlineMeeting resource)             |
|:-----------------------|:------------------------------|:-------------------------------------------------------------|
| Main API members | [event](/graph/api/resources/event) resource: <br>- **isOnlineMeeting** property <br>- **onlineMeeting** property of the [onlineMeetingInfo](/graph/api/resources/onlinemeetinginfo) type <br>- **onlineMeetingProvider** property <br> [calendar](/graph/api/resources/calendar) resource: <br>- **allowedOnlineMeetingProviders** property <br>- **defaultOnlineMeetingProvider** property <br> | [onlineMeeting](/graph/api/resources/onlinemeeting) resource <br> [audioConferencing](/graph/api/resources/audioconferencing) resource
| Integration with a calendar item | <br> [Create](/graph/api/user-post-events) or [update](/graph/api/event-update) **event** API automatically sets the resultant Outlook calendar [event](/graph/api/resources/event) as an online meeting.<br> Use the **isOnlineMeeting**, **onlineMeeting**, and **onlineMeetingProvider** properties of the returned Outlook calendar **event**.  | [Create](/graph/api/application-post-onlinemeetings) API returns an [onlineMeeting](/graph/api/resources/onlinemeeting) resource that is independent of a particular calendar type. <br> Does not create or update any Outlook event. <br> As an explicit step, make the **onlineMeeting** resource information available in an Outlook calendar event or in other apps. <br> Available in preview: [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta) an online meeting, and use the returned **externalId** property to streamline embedding the resultant meeting in a third-party calendar. |
| Changing to offline meeting | No - once you enable an **event** for joining online, you cannot update it to make it an offline meeting.<br> Cannot change the **onlineMeetingProvider** property, nor set **isOnlineMeeting** to `false` to disable the meeting online. | No - once you create an **onlineMeeting** resource, you can only delete it but cannot update any of its properties. |
| Meeting ad hoc | API always schedules the online meeting for the specified **event** start and end times (which are required). <br> Nonetheless, through the **onlineMeeting** property of **event**, can access and use the [online meeting information](/graph/api/resources/onlinemeetinginfo) during and outside of the scheduled meeting time.| Flexible for meeting ad hoc without having to set **startDateTime** and **endDateTime** of the **onlineMeeting** resource. <br> Through the **onlineMeeting** resource, access **joinWebUrl** to start an ad hoc meeting that starts instantly. |
| Locale-based join information | No direct API integration. | Use the `Accept-Language` HTTP header (preview) when creating an online meeting. <br> See [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta#example-2-create-an-online-meeting-with-user-token). |
| Joining over Internet (VoIP) | Through the **onlineMeeting** property, access **joinUrl**.  | Use the **joinWebUrl** property. |
| Joining by dial-in | Through the **onlineMeeting** property, access: <br> **conferenceId**, **quickDial**, **phones**, **tollFreeNumbers**, **tollNumber**. | Through the **audioConferencing** property, access: <br> - **conferenceId**, **tollFreeNumber**, **tollNumber**.<br> - **dialinUrl** property for an externally-accessible web page that contains dial-in info to facilitate integration with third-party apps. |
| Joining by video conferencing (audio and video) | No direct API integration. | Use the **videoTeleconferenceId** property. |
| Meeting lobby and automating attendee admission into online meeting | No direct API integration.<br> In the injected join-Teams-meeting blob of the event, attendee can click a **Meeting options** link to access meeting lobby, if enabled by the administrator. |API differentiates attendees from the organizer’s company and federated companies, and other attendees including anonymous ones.  <br> Use the **autoAdmittedUsers** property (preview).  |
| Relating to a Teams chat | No direct API integration. | Use the **chatInfo** property. |


## See also
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md)
- [Use the cloud communications API to create or join online meetings](cloud-communications-online-meetings.md)