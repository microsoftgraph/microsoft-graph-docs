---
title: "Microsoft Teams device usage reports"
description: "Use the Microsoft Teams device usage reports to get insights into the Microsoft Teams device usage in your organization. "
localization_priority: Normal
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Teams device usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams device usage reports to get insights into the Microsoft Teams device usage in your organization. 

## Methods

| Method                                                       | Return Type                                                  | Description                                                  |
| :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| [Get user detail](../api/reportroot-getteamsdeviceusageuserdetail.md) | [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) | Get details about Microsoft Teams device usage by user.      |
| [Get user counts](../api/reportroot-getteamsdeviceusageusercounts.md) | [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) | Get the number of daily unique Microsoft Teams licensed users by device type. |
| [Get total user counts](../api/reportroot-getteamsdeviceusagetotalusercounts.md) | [teamsDeviceUsageUserCounts](../resources/teamsdeviceusageusercounts.md) | Get the number of daily unique Microsoft Teams licensed or non-licensed users by device type. |
| [Get distribution user counts](../api/reportroot-getteamsdeviceusagedistributionusercounts.md) | [teamsDeviceUsagedistributionUserCounts](../resources/teamsdeviceusagedistributionusercounts.md) | Get the number of unique Microsoft Teams licensed users by device type over the selected time period. |
| [Get distribution total user counts](../api/reportroot-getteamsdeviceusagedistributiontotalusercounts.md) | [teamsDeviceUsagedistributionUserCounts](../resources/teamsdeviceusagedistributionusercounts.md) | Get the number of unique Microsoft Teams licensed or non-licensed users by device type over the selected time period. |


