# Email app usage reports

You can see how many email apps are connecting to Exchange Online. You can also see the version information of Outlook apps that users are using, which will allow you to follow up with those who are using unsupported versions to install supported versions of Outlook.

> **Note:** For details about different report views and names, see [Office 365 Reports - Email apps usage](https://support.office.com/client/Email-apps-usage-c2ce12a2-934f-4dd4-ba65-49b02be4703d).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_emailappusageuserdetail.md) | Stream      | Get user detail about email app usage.   |
| [Get apps user counts](../api/reportroot_emailappusageappsusercounts.md) | Stream      | Get the count of unique users that used the app. |
| [Get user counts](../api/reportroot_emailappusageusercounts.md) | Stream      | Get the count of unique users that connected to Exchange Online using any email app. |
| [Get versions user counts](../api/reportroot_emailappusageversionsusercounts.md) | Stream      | Get the total count of unique users using a specific version of Outlook desktop. |
