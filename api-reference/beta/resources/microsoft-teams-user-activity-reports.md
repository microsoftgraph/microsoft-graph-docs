---
title: "Microsoft Teams user activity reports"
description: "Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization."
localization_priority: Normal
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Teams user activity reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization.

## Methods

| Method                                                       | Return Type                                                  | Description                                                  |
| :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| [Get user detail](../api/reportroot-getteamsuseractivityuserdetail.md) | [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) | Get details about Microsoft Teams user activity by user.     |
| [Get activity counts](../api/reportroot-getteamsuseractivitycounts.md) | [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) | Get the number of Microsoft Teams activities by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. The activities are performed by Microsoft Teams licensed users. |
| [Get activity total counts](../api/reportroot-getteamsuseractivitytotalcounts.md) | [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) | Get the number of Microsoft Teams activities by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. The activities are performed by Microsoft Teams licensed or non-licensed users. |
| [Get user counts](../api/reportroot-getteamsuseractivityusercounts.md) | [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) | Get the number of Microsoft Teams licensed users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get total user counts](../api/reportroot-getteamsuseractivitytotalusercounts.md) | [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) | Get the number of Microsoft Teams licensed or non-licensed users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get distribution user counts](../api/reportroot-getteamsuseractivitydistributionusercounts.md) | [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) | Get the number of Microsoft Teams licensed users by activity type over the selected period. The activity types are number of teams chat messages, private chat messages, calls, and meetings. |
| [Get distribution total user counts](../api/reportroot-getteamsuseractivitydistributiontotalusercounts.md) | [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) | Get the number of Microsoft Teams licensed or non-licensed users by activity type over the selected period. The activity types are number of teams chat messages, private chat messages, calls, and meetings. |


