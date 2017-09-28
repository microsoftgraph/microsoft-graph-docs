# OneDrive usage reports

You can get a high-level view of the value you are getting from OneDrive in terms of the total number of files and storage used across all the OneDrive accounts in your organization. You can then drill into it to understand the trends of active OneDrive accounts, how many files are users interacting with as well as the storage used. It also gives you the per OneDrive account details.

> **Note:** For details about different report views and names, see [Office 365 Reports - OneDrive for Business usage](https://support.office.com/client/OneDrive-for-Business-usage-0de3b312-c4e8-4e4b-a02d-32b2f726a680).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | ---------------------------------------- |
| [Get user detail](../api/reportroot_onedriveusageuserdetail.md) | Stream      | Get user detail about OneDrive usage.    |
| [Get account counts](../api/reportroot_onedriveusageaccountcounts.md) | Stream      | Get the trend in the number of active OneDrive for Business sites. Any site in which users had viewed, modified, uploaded, downloaded, shared, or synced files are considered sites with file activity and are considered active sites. |
| [Get file counts](../api/reportroot_onedriveusagefilecounts.md) | Stream      | Get the number of files across all sites and the number of active files. A file is considered active if it has been saved, synced, modified or shared within the specific time period. |
| [Get storage](../api/reportroot_onedriveusagestorage.md) | Stream      | Get the trend on the amount of storage you are using in OneDrive for Business. |
