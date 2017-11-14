# Email app usage reports

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can see how many email apps are used to connect to Exchange Online. You can also see which versions of Outlook apps are used which will enable you to follow up with users who should upgrade to supported Outlook versions.

> **Note:** For details about different report views and names, see [Office 365 Reports - Email apps usage](https://support.office.com/client/Email-apps-usage-c2ce12a2-934f-4dd4-ba65-49b02be4703d).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot_getemailappusageuserdetail.md) | Stream          | [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) | Get details about which activities users performed on the various email apps. |
| [Get apps user counts](../api/reportroot_getemailappusageappsusercounts.md) | Stream          | [emailAppUsageAppsUserCounts](../resources/emailappusageappsusercounts.md) | Get the count of unique users per email app. |
| [Get user counts](../api/reportroot_getemailappusageusercounts.md) | Stream          | [emailAppUsageUserCounts](../resources/emailappusageusercounts.md) | Get the count of unique users that connected to Exchange Online using any email app. |
| [Get versions user counts](../api/reportroot_getemailappusageversionsusercounts.md) | Stream          | [emailAppUsageVersionsUserCounts](../resources/emailappusageversionsusercounts.md) | Get the count of unique users by Outlook desktop version. |
