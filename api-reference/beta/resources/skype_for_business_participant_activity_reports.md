# Skype for Business participant activity reports

You can get details on conferencing activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business conference participant activity](https://support.office.com/client/Skype-for-Business-Online-conference-participant-activity-c3c89995-65dd-4715-9e38-bb244c742c6b).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get activity counts](../api/reportroot_skypeforbusinessparticipantactivitycounts.md) | [skypeForBusinessParticipantActivityCounts](../api/reportroot_skypeforbusinessparticipantactivitycounts.md#response) | Get usage trends on the number and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - 3rd party. |
| [Get user counts](../api/reportroot_skypeforbusinessparticipantactivityusercounts.md) | [skypeForBusinessParticipantActivityUserCounts](../api/reportroot_skypeforbusinessparticipantactivityusercounts.md#response) | Get usage trends on the number of unique users and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - 3rd party. |
| [Get minute counts](../api/reportroot_skypeforbusinessparticipantactivityminutecounts.md) | [skypeForBusinessParticipantActivityMinuteCounts](../api/reportroot_skypeforbusinessparticipantactivityminutecounts.md#response) | Get usage trends on the length in minutes and type of conference sessions that users from your organization participated in. Types of conference sessions include audio/video, and dial-in and dial-out - Microsoft. |
