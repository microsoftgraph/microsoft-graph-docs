# Skype for Business device usage reports

You can get details on the types of clients and devices that are used across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business clients used](https://support.office.com/client/Skype-for-Business-clients-used-b9019c36-034f-40c7-acb0-c2a0400b03c3).

## Reports

| Function                                 | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_skypeforbusinessdeviceusageuserdetail.md) | [skypeForBusinessDeviceUsageUserDetail](../api/reportroot_skypeforbusinessdeviceusageuserdetail.md#response) | Get details about Skype for Business device usage by user. |
| [Get distribution user counts](../api/reportroot_skypeforbusinessdeviceusagedistributionusercounts.md) | [skypeForBusinessDeviceUsageDistributionUserCounts](../api/reportroot_skypeforbusinessdeviceusagedistributionusercounts.md#response) | Get the number of users using unique devices in your organization. The report will show you the number of users per device including Windows, Windows phone, Android phone, iPhone, and iPad. |
| [Get user counts](../api/reportroot_skypeforbusinessdeviceusageusercounts.md) | [skypeForBusinessDeviceUsageUserCounts](../api/reportroot_skypeforbusinessdeviceusageusercounts.md#response) | Get the usage trends on how many users in your organization have connected using the Skype for Business app. You will also get a breakdown by the type of device (Windows, Windows phone, Android phone, iPhone, or iPad) on which the Skype for Business client app is installed and used across your organization. |
