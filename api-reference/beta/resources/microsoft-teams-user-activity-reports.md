---
title: "Microsoft Teams user activity reports"
description: "Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Microsoft Teams user activity reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization.

## Methods

| Method                                   | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getteamsuseractivityuserdetail.md) | [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) | Get details about Microsoft Teams user activity by user. |
| [Get activity counts](../api/reportroot-getteamsuseractivitycounts.md) | [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) | Get the number of Microsoft Teams activities by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get user counts](../api/reportroot-getteamsuseractivityusercounts.md) | [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) | Get the number of users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/microsoft-teams-user-activity-reports.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
