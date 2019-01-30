---
title: "teamGuestSettings resource type"
description: "Settings to configure whether guests can create, update, or delete channels in the team."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
---

# teamGuestSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure whether guests can create, update, or delete channels in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|Boolean|If set to true, guests can add and update channels.|
|allowDeleteChannels|Boolean|If set to true, guests can delete channels.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamGuestSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowDeleteChannels": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's guestSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamguestsettings.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
