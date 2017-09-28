# SharePoint activity reports

You can get the activity of every user licensed to use SharePoint by looking at their interaction with files. It also helps you to understand the level of collaboration going on by looking at the number of files shared.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint activity](https://support.office.com/client/SharePoint-activity-a91c958f-1279-499d-9959-12f0de08dc8f).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_sharepointactivityuserdetail.md) | Stream      | Get user detail about SharePoint activity. |
| [Get file counts](../api/reportroot_sharepointactivityfilecounts.md) | Stream      | Get the unique numbers of licensed users that perform file interactions with files stored on SharePoint sites. |
| [Get user counts](../api/reportroot_sharepointactivityusercounts.md) | Stream      | Get the trend in the number of active users. A user is considered active if he or she has executed a file activity (save, sync, modify, or share) or visited a page within the specific time period. |
| [Get pages](../api/reportroot_sharepointactivitypages.md) | Stream      | Get the number of unique pages visited by users. |
