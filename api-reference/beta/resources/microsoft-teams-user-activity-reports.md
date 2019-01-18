---
title: "Microsoft Teams user activity reports"
description: "Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization."
localization_priority: Normal
ms.prod: "reports"
---

# Microsoft Teams user activity reports

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported. These APIs are not supported in Microsoft Graph China operated by 21Vianet.

Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization.

## Methods

| Method                                   | Return Type                              | Description                              |
| :--------------------------------------- | :--------------------------------------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getteamsuseractivityuserdetail.md) | [teamsUserActivityUserDetail](../resources/teamsuseractivityuserdetail.md) | Get details about Microsoft Teams user activity by user. |
| [Get activity counts](../api/reportroot-getteamsuseractivitycounts.md) | [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) | Get the number of Microsoft Teams activities by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get user counts](../api/reportroot-getteamsuseractivityusercounts.md) | [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) | Get the number of users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
