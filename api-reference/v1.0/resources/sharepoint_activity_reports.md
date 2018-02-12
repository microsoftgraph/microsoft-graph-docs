# SharePoint activity reports

You can use the SharePoint activity reports to get the activity of every user licensed to use SharePoint by looking at their interaction with files. You can also look at the level of collaboration going on based on the number of files shared.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint activity](https://support.office.com/client/SharePoint-activity-a91c958f-1279-499d-9959-12f0de08dc8f).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_getsharepointactivityuserdetail.md) | Stream      | Get details about SharePoint activity by user. |
| [Get file counts](../api/reportroot_getsharepointactivityfilecounts.md) | Stream      | Get the number of unique, licensed users who interacted with files stored on SharePoint sites. |
| [Get user counts](../api/reportroot_getsharepointactivityusercounts.md) | Stream      | Get the trend in the number of active users. A user is considered active if he or she has executed a file activity (save, sync, modify, or share) or visited a page within the specified time period. |
| [Get pages](../api/reportroot_getsharepointactivitypages.md) | Stream      | Get the number of unique pages visited by users. |
