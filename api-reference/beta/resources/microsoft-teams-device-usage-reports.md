---
title: "Microsoft Teams device usage reports"
description: "Use the Microsoft Teams device usage reports to get insights into the Microsoft Teams device usage in your organization. "
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Microsoft Teams device usage reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams device usage reports to get insights into the Microsoft Teams device usage in your organization. 

## Methods

| Method                                   | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getteamsdeviceusageuserdetail.md) | [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) | Get details about Microsoft Teams device usage by user. |
| [Get user counts](../api/reportroot-getteamsdeviceusageusercounts.md) | [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) | Get the number of daily unique users by device type. |
| [Get distribution user counts](../api/reportroot-getteamsdeviceusagedistributionusercounts.md) | [teamsDeviceUsagedistributionUserCounts](../resources/teamsdeviceusagedistributionusercounts.md) | Get the number of unique users by device type over the selected time period. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/microsoft-teams-device-usage-reports.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
