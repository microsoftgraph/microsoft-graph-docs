---
title: "IVR scenarios in calls"
description: "The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:"
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# IVR scenarios in calls

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:

- Playing an audio prompt - for example, when a call is placed in a customer service agent's queue.
- Record - for example, to record the caller's audio, usually after they heard a prompt with options.
- Subscribe to tone - for example, when you want to know what DTMF tones the caller selected, usually after hearing the audio prompt.
- Cancel Media Processing - for example, when you want to cancel any PlayPrompt or Record operations that might be in process.
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/calls-api-ivr-overview.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
