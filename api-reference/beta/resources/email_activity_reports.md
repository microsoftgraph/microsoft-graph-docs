#Email activity reports

You can get a high level view of email traffic within your organization from the Reports page, and then you can drill into the Email activity widget to understand the trends and per user level details of the email activity within your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Email Activity](https://support.office.com/client/Email-activity-1cbe2c00-ca65-4fb9-9663-1bbfa58ebe44).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_emailactivityuserdetail.md) | [emailActivityUserDetail](../api/reportroot_emailactivityuserdetail.md#response) | Get user detail about email activity.    |
| [Get activity counts](../api/reportroot_emailactivitycounts.md) | [emailActivitySummary](../api/reportroot_emailactivitycounts.md#response) | Enables you to understand the trend of the amount of email activity going on in your organization. You can understand the split of email send or read or received activities. |
| [Get user counts](../api/reportroot_emailactivityusercounts.md) | [emailActivitySummary](../api/reportroot_emailactivityusercounts.md#response) | Enables you to understand the trend of the amount of unique users who are generating the email activities. You can look at the trend of users performing send, reading or receiving email activities. |
