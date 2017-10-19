# SharePoint site usage reports

You can get a high level view of the value you are getting from SharePoint in terms of the total number of files that users store in SharePoint sites, how many files are actively being used, and the storage consumed across all these sites. Then, you can drill into the SharePoint site usage report to understand the trends and per site level details for all sites.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint site usage](https://support.office.com/client/SharePoint-site-usage-4ecfb843-e5d5-464d-8bf6-7ed512a9b213).

## Reports 

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_sharepointsiteusageuserdetail.md) | [sharePointSiteUsageUserDetail](../api/reportroot_sharepointsiteusageuserdetail.md#response) | Get details about SharePoint site usage by user. |
| [Get file counts](../api/reportroot_sharepointsiteusagefilecounts.md) | [sharePointSiteUsageFileCounts](../api/reportroot_sharepointsiteusagefilecounts.md#response) | Get the total number of files across all sites and the number of active files. A file (user or system) is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get site counts](../api/reportroot_sharepointsiteusagesitecounts.md) | [sharePointSiteUsageSiteCounts](../api/reportroot_sharepointsiteusagesitecounts.md#response) | Get the total number of files across all sites and the number of active files. A file (user or system) is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get storage](../api/reportroot_sharepointsiteusagestorage.md) | [siteUsageStorage](../api/reportroot_sharepointsiteusagestorage.md#response) | Get the trend of storage allocated and consumed during the reporting period. |
| [Get pages](../api/reportroot_sharepointsiteusagepages.md) | [sharePointSiteUsagePages](../api/reportroot_sharepointsiteusagepages.md#response) | Get the number of pages viewed across all sites. |
