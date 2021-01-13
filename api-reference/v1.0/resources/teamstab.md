---
title: "teamsTab resource type"
description: "A teamsTab is a tab that's pinned (attached) to a channel within a team. "
localization_priority: Normal
author: "AkJo"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsTab resource type

Namespace: microsoft.graph



A teamsTab is a [tab](../resources/teamstab.md) that's pinned (attached) to a [channel](channel.md) within a [team](team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs](../api/channel-list-tabs.md) | [teamsTab](teamstab.md) | List tabs pinned to a channel.|
|[Get tab](../api/channel-get-tabs.md) | [teamsTab](teamstab.md) | Read a tab pinned to a channel.|
|[Add tab](../api/channel-post-tabs.md) | [teamsTab](teamstab.md) | Add (pin) a tab to a channel.|
|[Update tab](../api/channel-patch-tabs.md) | [teamsTab](teamstab.md) | Update the tab properties.|
|[Remove tab](../api/channel-delete-tabs.md) | None | Remove (unpin) a tab from a channel.|


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|  id              |   string                  |  Identifier that uniquely identifies a specific instance of a channel tab. Read only.     |
|  displayName            |   string                  |  Name of the tab.     |
|  webUrl          |   string                  |  Deep link URL of the tab instance. Read only.     |
|  configuration        |   [teamsTabConfiguration](teamstabconfiguration.md) |  Container for custom settings applied to a tab. The tab is considered configured only once this property is set.     |

## Relationships

| Relationship | Type	| Description |
|:---------------|:--------|:----------|
|teamsApp|[teamsApp](teamsapp.md) | The application that is linked to the tab. This cannot be changed after tab creation. |

## JSON representation

The following is a JSON representation of the resource.


<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.teamsTab"
}-->

```json
{  
  "id": "string",
  "displayName": "string",
  "webUrl": "string",
  "configuration" : "teamsTabConfiguration"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsTab resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## See also

[Configuring the built-in tab types](/graph/teams-configuring-builtin-tabs)

