# Yammer activity reports

You can understand the level of engagement of your organization with Yammer by looking at the number of unique users using Yammer to post, like or read a message and the amount of activity generated across the organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Yammer Activity](https://support.office.com/client/Yammer-activity-c7c9f938-5b8e-4d52-b1a2-c7c32cb2312a).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_yammeractivityuserdetail.md) | [yammerActivityUserDetail](../api/reportroot_yammeractivityuserdetail.md#response) | Get user detail about Yammer activity.   |
| [Get activity counts](../api/reportroot_yammeractivitycounts.md) | [yammerActivitySummary](../api/reportroot_yammeractivitycounts.md#response) | Get the trend of the amount of Yammer activity going on in your organization. You can understand the split of messages posted, read, or liked. |
| [Get user counts](../api/reportroot_yammeractivityusercounts.md) | [yammerActivitySummary](../api/reportroot_yammeractivityusercounts.md#response) | Get the trend of the amount of unique users who are generating the Yammer activities. You can look at the trend of users posting, reading, or liking Yammer messages. |
