# Office 365 groups activity reports

You can gain insights into the activity of Office 365 groups in your organization and see how many Office 365 groups are being created and used.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Office 365 groups](https://support.office.com/client/Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_office365groupsactivityuserdetail.md) | [office365GroupsActivityUserDetail](../api/reportroot_office365groupsactivityuserdetail.md#response) | Get user detail about Office 365 groups activity. |
| [Get activity counts](../api/reportroot_office365groupsactivitycounts.md) | [office365GroupsActivityCounts](../api/reportroot_office365groupsactivitycounts.md#response) | Get the number of group activities across group workloads. |
| [Get group counts](../api/reportroot_office365groupsactivitygroupcounts.md) | [office365GroupsActivityGroupCounts](../api/reportroot_office365groupsactivitygroupcounts.md#response) | Get a total number of groups that existed on any given day, and active groups on that day based on Email Conversations, Yammer Posts and SharePoint file activities. |
| [Get storage](../api/reportroot_office365groupsactivitystorage.md) | [office365GroupsActivityStorage](../api/reportroot_office365groupsactivitystorage.md#response) | Get the total storage used across all group mailboxes and group sites. |
| [Get file counts](../api/reportroot_office365groupsactivityfilecounts.md) | [office365GroupsActivityFileCounts](../api/reportroot_office365groupsactivityfilecounts.md#response) | Get the number of total and active files across all group sites associated with an Office 365 Group. |
