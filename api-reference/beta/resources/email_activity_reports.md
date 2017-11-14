# Email activity reports

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can get a high level view of email traffic within your organization from the Reports page. You can also drill into the Email Activity widget to understand the trends and details per user of the email activity in your organization.

> **Note:** For details about different report views and names, see [Office 365 Reports - Email Activity](https://support.office.com/client/Email-activity-1cbe2c00-ca65-4fb9-9663-1bbfa58ebe44).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot_getemailactivityuserdetail.md) | Stream          | [emailActivityUserDetail](../resources/emailactivityuserdetail.md) | Get details about email activity users have performed. |
| [Get activity counts](../api/reportroot_getemailactivitycounts.md) | Stream          | [emailActivitySummary](../resources/emailactivitysummary.md) | Enables you to understand the trends of email activity (like how many were sent, read, and received) in your organization. |
| [Get user counts](../api/reportroot_getemailactivityusercounts.md) | Stream          | [emailActivitySummary](../resources/emailactivitysummary.md) | Enables you to understand trends on the number of unique users who are performing email activities like send, read, and receive. |
