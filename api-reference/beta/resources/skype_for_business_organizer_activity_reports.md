# Skype for Business organizer activity reports

You can get details on organized conferences activity across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business conference organizer activity](https://support.office.com/client/Skype-for-Business-Online-conference-organized-activity-03a255d4-0e1d-4b24-b73d-7a62fae36254).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get activity counts](../api/reportroot_skypeforbusinessorganizeractivitycounts.md) | [skypeForBusinessOrganizerActivityCounts](../api/reportroot_skypeforbusinessorganizeractivitycounts.md#response) | Get the usage trends and to see the total number of conferences that were organized and the type of conferences that are being held in your organization. It will show you the total number and types of IM, audio/video, application sharing, web, dial-in/out - 3rd party, and Dial-in/out Microsoft conferences that were organized across your organization. |
| [Get user counts](../api/reportroot_skypeforbusinessorganizeractivityusercounts.md) | [skypeForBusinessOrganizerActivityUserCounts](../api/reportroot_skypeforbusinessorganizeractivityusercounts.md#response) | Get the trends and to see the number of unique users that have organized conferences that are being held in your organization. It will show you the total number of users along with the types of IM, audio/video, application sharing, web, dial-in/out - 3rd party, and dial-in/out Microsoft of conferences that were organized. |
| [Get minute counts](../api/reportroot_skypeforbusinessorganizeractivityminutecounts.md) | [skypeForBusinessOrganizerActivityMinuteCounts](../api/reportroot_skypeforbusinessorganizeractivityminutecounts.md#response) | Get the usage trends and to see the number of minutes that are used by users when they organize a conference using audio/video, and dial-in and dial-out - Microsoft as their conferencing provider. It will show you the total number of minutes of audio/video and dial-in Microsoft minutes, and dial-out Microsoft minutes that are used during conferences that were organized. |
