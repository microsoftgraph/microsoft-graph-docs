---
title: "teamClassSettings resource type"
description: "Represents settings specific to teams of type Class."
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamClassSettings resource type

Namespace: microsoft.graph

Represents class-specific properties of a [team](team.md). Available only when the team represents a class.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|notifyGuardiansAboutAssignments|Boolean|If set to `true`, enables sending of weekly assignments digest emails to parents/guardians, provided the tenant admin has enabled the setting globally.|

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

