---
title: "Members"
description: "Describes the visibility of a team. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# teamVisibilityType enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the visibility of a [team](../resources/team.md). 

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|private|0|Anyone can see the team but only the owner can add a user to the team.|
|public|1|Anyone can join the team.|
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamvisibilitytype.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
