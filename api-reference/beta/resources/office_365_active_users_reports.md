# Office 365 active users reports

You can use the Office 365 active users report to find out how many product licenses are being used by individuals in your organization, and drill down for information about which users are using what products. This report can help administrators identify underutilized products or users that might need additional training or information.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Active Users](https://support.office.com/client/Active-Users-fc1cf1d0-cd84-43fd-adb7-a4c4dfa8112d).

## Reports
| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_office365activeuserdetail.md) | [office365ActiveUserDetail](../api/reportroot_office365activeuserdetail.md#response) | Get details about Office 365 active users. |
| [Get user counts](../api/reportroot_office365activeusercounts.md) | [office365ActiveUserCounts](../api/reportroot_office365activeusercounts.md#response) | Get the count of daily active users in the reporting period by product. |
| [Get services user counts](../api/reportroot_office365servicesusercounts.md) | [office365ServicesUserCounts](../api/reportroot_office365servicesusercounts.md#response) | Get the count of users by activity type and service. |
