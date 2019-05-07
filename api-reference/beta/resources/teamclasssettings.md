---
title: "teamClassSettings resource type"
description: "Configure settings specific to teams of type Class."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
---

# teamClassSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configure *Class*-specific properties of a [team](teamclasssettings.md). Available only when the team represents a *Class*.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|notifyGuardiansAboutAssignments|Boolean|If set to true, enables sending of weekly Assignments digest emails to parents/guardians, provided the tenant admin has enabled the setting globally.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamClassSettings"
}-->

```json
{
  "notifyGuardiansAboutAssignments": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's classSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
