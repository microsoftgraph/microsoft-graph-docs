---
title: "teamsAsyncOperationType enum type"
description: "Types of teamsAsyncOperation. Members will be added here as more async operations are supported."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# teamsAsyncOperationType enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Types of [teamsAsyncOperation](teamsasyncoperation.md). Members will be added here as more async operations are supported.

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|invalid|0|Invalid value.|
|cloneTeam|1|Operation to clone a team.|
|archiveTeam|2|Operation to archive a team.|
|unarchiveTeam|3|Operation to restore an archived team.|
|createTeam|3|Operation to create a team from scratch.|

<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamsasyncoperationtype.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
