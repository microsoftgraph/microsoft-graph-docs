# Skype for Business peer-to-peer activity reports

You can get details on peer-to-peer activity across your organization. These details are very helpful when you investigating, planning, and making other business decisions for your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business peer-to-peer activity](https://support.office.com/client/Skype-for-Business-Online-peertopeer-activity-d3b2d569-4ee9-44b8-92bf-d518142f0713).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get activity counts](../api/reportroot_skypeforbusinesspeertopeeractivitycounts.md) | [skypeForBusinessPeerToPeerActivityCounts](../api/reportroot_skypeforbusinesspeertopeeractivitycounts.md#response) | Get the usage trends and to see the total number of sessions per session type being held in your organization. It will show you the total number and types of IM, audio, video, application sharing and file transfers sessions across your organization. |
| [Get user counts](../api/reportroot_skypeforbusinesspeertopeeractivityusercounts.md) | [skypeForBusinessPeerToPeerActivityUserCounts](../api/reportroot_skypeforbusinesspeertopeeractivityusercounts.md#response) | Get the usage trends and to see the number of unique users that are participating in peer-to-peer activities that are being held in your organization. It will show you the total number of users along with the types of IM, audio, video, application sharing and file transfers in peer-to-peer sessions. |
| [Get minute counts](../api/reportroot_skypeforbusinesspeertopeeractivityminutecounts.md) | [skypeForBusinessPeerToPeerActivityMinuteCounts](../api/reportroot_skypeforbusinesspeertopeeractivityminutecounts.md#response) | Get the usage trends and to see the number of minutes that are used by users doing peer-to-peer activities using audio and video. It will show you the total number of minutes of audio and video that is used in peer-to-peer sessions. |
