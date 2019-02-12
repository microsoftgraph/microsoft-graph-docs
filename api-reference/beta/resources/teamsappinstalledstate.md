---
title: "Members"
description: "Describes the current installation status of a teamsApp."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

#teamsAppInstalledState enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the current installation status of a [teamsApp](teamsapp.md).

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|notInstalled|0|App is not installed to team.|
|installed|1|App is installed normally.|
|installedAndHidden|2|App is installed but hidden from view.|
|installedAndPermanent|3|App is permanently installed and may not be removed.|
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamsappinstalledstate.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
