# Yammer activity reports

You can understand the level of engagement of your organization with Yammer by looking at the number of unique users using Yammer to post, like or read a message and the amount of activity generated across the organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Yammer Activity](https://support.office.com/client/Yammer-activity-c7c9f938-5b8e-4d52-b1a2-c7c32cb2312a).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_yammeractivityuserdetail.md) | [yammerActivityUserDetail](../api/reportroot_yammeractivityuserdetail.md#response) | Get details about Yammer activity by user. |
| [Get activity counts](../api/reportroot_yammeractivitycounts.md) | [yammerActivitySummary](../api/reportroot_yammeractivitycounts.md#response) | Get the trends on the amount of Yammer activity in your organization by how many messages were posted, read, and liked. |
| [Get user counts](../api/reportroot_yammeractivityusercounts.md) | [yammerActivitySummary](../api/reportroot_yammeractivityusercounts.md#response) | Get the trends on the number of unique users who post, read, and like Yammer messages. |
