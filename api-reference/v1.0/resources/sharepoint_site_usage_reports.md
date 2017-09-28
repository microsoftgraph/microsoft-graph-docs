# SharePoint site usage reports

You can get a high level view of the value you are getting from SharePoint in terms of the total number of files that users store in SharePoint sites, how many files are actively being used, and the storage consumed across all these sites. Then, you can drill into the SharePoint site usage report to understand the trends and per site level details for all sites.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint site usage](https://support.office.com/client/SharePoint-site-usage-4ecfb843-e5d5-464d-8bf6-7ed512a9b213).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_sharepointsiteusageuserdetail.md) | Stream      | Get user detail about SharePoint site usage. |
| [Get file counts](../api/reportroot_sharepointsiteusagefilecounts.md) | Stream      | Get the total number of files across all sites and the number of active files. The number of total files includes both user files and system files. A file is considered active if it has been saved, synced, modified or shared within the specific time period. |
| [Get site counts](../api/reportroot_sharepointsiteusagesitecounts.md) | Stream      | Get the number of total and active sites. Any site in which users had viewed, modified, uploaded, downloaded, shared, or synced a file or viewed a page within the reporting period. |
| [Get storage](../api/reportroot_sharepointsiteusagestorage.md) | Stream      | Get the trend of storage allocated and consumed during the reporting period. |
| [Get pages](../api/reportroot_sharepointsiteusagepages.md) | Stream      | Get the number of pages viewed across all sites. |
