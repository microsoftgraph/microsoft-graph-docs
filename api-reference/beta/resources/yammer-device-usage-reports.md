---
title: "Yammer device usage reports"
description: "The device usage reports for Yammer give you information about which devices your users utilize to engage on Yammer. You can view the number of users by device type over a selected time period and view details by user."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
---

# Yammer device usage reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The device usage reports for Yammer give you information about which devices your users utilize to engage on Yammer. You can view the number of users by device type over a selected time period and view details by user.

> **Note:** For details about different report views and names, see [Office 365 Reports - Yammer device usage](https://support.office.com/client/Yammer-device-usage-b793ffdd-effa-43d0-849a-b1ca2e899f38).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getyammerdeviceusageuserdetail.md) | Stream          | [yammerDeviceUsageUserDetail](../resources/yammerdeviceusageuserdetail.md) | Get details about Yammer device usage by user. |
| [Get distribution user counts](../api/reportroot-getyammerdeviceusagedistributionusercounts.md) | Stream          | [yammerDeviceUsageDistributionUserCounts](../resources/yammerdeviceusagedistributionusercounts.md) | Get the number of users by device type.  |
| [Get user counts](../api/reportroot-getyammerdeviceusageusercounts.md) | Stream          | [yammerDeviceUsageUserCounts](../resources/yammerdeviceusageusercounts.md) | Get the number of daily users by device type. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/yammer-device-usage-reports.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
