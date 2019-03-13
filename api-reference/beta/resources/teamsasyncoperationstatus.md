---
title: "teamsAsyncOperationStatus enum type"
description: "Describes the current status of a teamsAsyncOperation."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAsyncOperationStatus enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the current status of a [teamsAsyncOperation](teamsasyncoperation.md).

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|invalid|0|Invalid value.|
|notStarted|1|The operation has not started.|
|inProgress|2|The operation is running.|
|succeeded|3|The operation succeeded.|
|failed|4|The operation failed.|
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamsasyncoperationstatus.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
