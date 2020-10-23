---
title: "Choose an API in Microsoft Graph to create and join online meetings"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "angelgolfer-ms"
localization_priority: Priority
---

# Choose an API in Microsoft Graph to create and join online meetings

Microsoft Graph offers two API sets that arrange and join online meetings on Microsoft Teams or Skype:

- [Calendar API](outlook-calendar-online-meetings.md): use the [event](/graph/api/resources/event) resource.
- [Cloud communications API](cloud-communications-online-meetings.md): use the [onlineMeeting](/graph/api/resources/onlineMeeting) resource.

The choice is between:
- A convenient programmatic way to set up an online meeting in the Outlook calendar where attendees click to join the meeting, and continue their experience in Teams or Skype.
- And, a richer programmatic integration of Teams or Skype features in an app for a more customized experience.

## Considerations when choosing an API for your scenario

Choose the calendar API for a streamlined, built-in integration with Outlook calendar, that results in an online meeting event in the Outlook calendar:
- Programmatic support:
  - Apps can _directly create or update an event as an online meeting in the Outlook calendar_, with a join-Teams-meeting blob inserted in the Outlook calendar event.
  - Apps get properties for joining meeting over the Internet or by dialing in.
- Attendees' UI experience with the programmatically created calendar event is in full parity with any event that has been created through the Outlook UI:
  - Attendees can choose to meet online or in person.
  - Attendees can click in the join-Teams-meeting blob to join meeting over the Internet or by dialing in.
  - Attendees can use other rich features of Teams, including video conferencing and meeting lobby, if configured.

> **Note:** Integration with Outlook calendar assumes an administrator has set up Outlook for online meetings. [Verify](/microsoftteams/exchange-teams-interact) the support before using the API.

Choose the cloud communications API for flexibility and broader programmatic support:
- Apps have more flexibility to further integrate the API results with line of business and other apps. The API is decoupled with any specific calendar, and does not create an event in any calendar.
- Apps can provide the following capabilities for attendees:
  - Locale-based join information.
  - Joining meeting over the Internet or by dialing in.
  - Video-conferencing.
  - Additional security features such as meeting lobby and automating attendee admission (preview).
  - Associating meeting with a Microsoft Teams chat.

## Comparing the APIs

The following table details the differences at the API level. 


| Online meeting feature | Calendar API (event resource) | Cloud communication API (onlineMeeting resource)             |
|:-----------------------|:------------------------------|:-------------------------------------------------------------|
| Main API members | [event](/graph/api/resources/event) resource: <br>- **isOnlineMeeting** property <br>- **onlineMeeting** property of the [onlineMeetingInfo](/graph/api/resources/onlinemeetinginfo) type <br>- **onlineMeetingProvider** property <br> [calendar](/graph/api/resources/calendar) resource: <br>- **allowedOnlineMeetingProviders** property <br>- **defaultOnlineMeetingProvider** property <br> | [onlineMeeting](/graph/api/resources/onlinemeeting) resource <br> [audioConferencing](/graph/api/resources/audioconferencing) resource
| Integration with a calendar item | <br>- [Create](/graph/api/user-post-events) or [update](/graph/api/event-update) **event** API automatically sets the resultant Outlook calendar [event](/graph/api/resources/event) as an online meeting.<br>- Use the **isOnlineMeeting**, **onlineMeeting**, and **onlineMeetingProvider** properties of the returned Outlook calendar **event**.  | - [Create](/graph/api/application-post-onlinemeetings) API returns an [onlineMeeting](/graph/api/resources/onlinemeeting) resource that is independent of a particular calendar type. <br>- Does not create or update any Outlook event. <br>- Integrate the returned **onlineMeeting** resource information in an app experience appropriate for your scenario. <br>- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta) to return an online meeting that has a specified **externalId** value, or create one if none already exists, to streamline embedding the resultant meeting in a third-party calendar. |
| Changing to offline meeting | - No - once you enable an **event** for joining online, you cannot update it to make it an offline meeting.<br>- Cannot change the **onlineMeetingProvider** property, nor set **isOnlineMeeting** to `false` to disable the meeting online. | No - once you create an **onlineMeeting** resource, you can only delete it but cannot change it to an offline meeting. |
| Locale-based join information | No direct API integration. | - Use the `Accept-Language` HTTP header when creating an online meeting. <br>- See [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta#example-2-create-an-online-meeting-with-user-token). |
| Joining over Internet (VoIP) | Through the **onlineMeeting** property, access **joinUrl**.  | Use the **joinWebUrl** property. |
| Joining by dial-in | Through the **onlineMeeting** property, access: <br>- **conferenceId**, **quickDial**, **phones**, **tollFreeNumbers**, **tollNumber**. |Through the **audioConferencing** property, access: <br> - **conferenceId**, **tollFreeNumber**, **tollNumber**.<br> - **dialinUrl** property for an externally-accessible web page that contains dial-in info to facilitate integration with third-party apps. |
| Joining by video conferencing (audio and video) | No direct API integration. | Use the **videoTeleconferenceId** property. |
| Meeting lobby and automating attendee admission into online meeting | - No direct API integration.<br>- In the injected join-Teams-meeting blob of the event, attendee can click a **Meeting options** link to access meeting lobby, if enabled by the administrator. |- API differentiates attendees from the organizer’s company and federated companies, and other attendees including anonymous ones.  <br>- Use the **autoAdmittedUsers** property (preview).  |
| Relating to a Teams chat | No direct API integration. | Use the **chatInfo** property. |


## See also
- [Enable an event as an online meeting in an Outlook calendar](outlook-calendar-online-meetings.md)
- [Use the cloud communications API to create or join online meetings](cloud-communications-online-meetings.md)