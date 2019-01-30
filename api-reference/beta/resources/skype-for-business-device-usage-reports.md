---
title: "Skype for Business device usage reports"
description: "You can get details on the types of clients and devices that are used across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
---

# Skype for Business device usage reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can get details on the types of clients and devices that are used across your organization. These details are very helpful when you are investigating, planning, and making other business decisions for your organization.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business clients used](https://support.office.com/client/Skype-for-Business-clients-used-b9019c36-034f-40c7-acb0-c2a0400b03c3).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getskypeforbusinessdeviceusageuserdetail.md) | Stream          | [skypeForBusinessDeviceUsageUserDetail](../resources/skypeforbusinessdeviceusageuserdetail.md) | Get details about Skype for Business device usage by user. |
| [Get distribution user counts](../api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts.md) | Stream          | [skypeForBusinessDeviceUsageDistributionUserCounts](../resources/skypeforbusinessdeviceusagedistributionusercounts.md) | Get the number of users using unique devices in your organization. The report will show you the number of users per device including Windows, Windows phone, Android phone, iPhone, and iPad. |
| [Get user counts](../api/reportroot-getskypeforbusinessdeviceusageusercounts.md) | Stream          | [skypeForBusinessDeviceUsageUserCounts](../resources/skypeforbusinessdeviceusageusercounts.md) | Get the usage trends on how many users in your organization have connected using the Skype for Business app. You will also get a breakdown by the type of device (Windows, Windows phone, Android phone, iPhone, or iPad) on which the Skype for Business client app is installed and used across your organization. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/skype-for-business-device-usage-reports.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
