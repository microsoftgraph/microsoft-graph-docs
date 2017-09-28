# Office 365 activations reports

The Office 365 activation report gives you a view of which users have activated their Office 365 subscriptions on at least one device. It provides a breakdown of the Office 365 ProPlus, Project, and Visio Pro for Office 365 subscription activations, as well as the breakdown of activations across desktop and devices. This report could be useful in helping you identify users that might need additional help and support to activate their Office subscription.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60).

## Reports
| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_office365activationsuserdetail.md) | [office365ActivationsUserDetail](../api/reportroot_office365activationsuserdetail.md#response) | Get user detail about Office 365 activations. |
| [Get activation counts](../api/reportroot_office365activationcounts.md) | [office365ActivationCounts](../api/reportroot_office365activationcounts.md#response) | Get the count of Office 365 activations on desktops and devices. |
| [Get user counts](../api/reportroot_office365activationsusercounts.md) | [office365ActivationsUserCounts](../api/reportroot_office365activationsusercounts.md#response) | Get the count of users that are enabled and those that have activated the Office subscription on desktop or devices. |
