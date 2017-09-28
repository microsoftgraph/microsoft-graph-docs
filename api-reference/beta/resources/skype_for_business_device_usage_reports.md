# Skype for Business device usage reports

You can get details on the types of clients/devices that are used across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business clients used](https://support.office.com/client/Skype-for-Business-clients-used-b9019c36-034f-40c7-acb0-c2a0400b03c3).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_skypeforbusinessdeviceusageuserdetail.md) | [skypeForBusinessDeviceUsageUserDetail](../api/reportroot_skypeforbusinessdeviceusageuserdetail.md#response) | Get user detail about Skype for Business device usage. |
| [Get distribution user counts](../api/reportroot_skypeforbusinessdeviceusagedistributionusercounts.md) | [skypeForBusinessDeviceUsageDistributionUserCounts](../api/reportroot_skypeforbusinessdeviceusagedistributionusercounts.md#response) | Get the number of users using unique devices in your organization. It will show you the total number of Windows, Windows phone, Android phone, iPhone and iPad users with a device being used. |
| [Get user counts](../api/reportroot_skypeforbusinessdeviceusageusercounts.md) | [skypeForBusinessDeviceUsageUserCounts](../api/reportroot_skypeforbusinessdeviceusageusercounts.md#response) | Get the usage trends and to see the number of users that are connected using the Skype for Business app that are used in your organization. It will show you the total number of users and types of Windows, Windows phone, Android phone, iPhone and iPad devices that have the Skype for Business client app installed and are being used across your organization. |
