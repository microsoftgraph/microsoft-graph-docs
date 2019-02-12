---
title: "clonableTeamParts enum type"
description: "Describes which part of a team should be cloned. "
localization_priority: Normal
---

# clonableTeamParts enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes which part of a [team](../resources/team.md) should be cloned. 

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|apps|1|Copy the list of installed apps.|
|tabs|2|copies the tabs within channels.|
|settings|4|Copies all settings within the team, along with key group settings.|
|channels|8|copies the channel structure (but not the messages in the channel).|
|members|16|copies the members and owners of the team.|
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/clonableteamparts.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
