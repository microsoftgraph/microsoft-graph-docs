# teamsTab resource type



A teamsTab is a [tab](../resources/teamstab.md) that's pinned (attached) to a [channel](channel.md) within a [team](team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs](../api/teamstab_list.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[Get tab](../api/teamstab_get.md) | [teamsTab](teamstab.md) | Reads a tab pinned to a channel.|
|[Add tab](../api/teamstab_add.md) | [teamsTab](teamstab.md) | Adds (pins) a tab to a channel.|
|[Remove tab](../api/teamstab_delete.md) | None | Removes (unpins) a tab from a channel.|
|[Update tab](../api/teamstab_update.md) | [teamsTab](teamstab.md) | Updates the tab properties.|


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|  id              |   string                  |  Identifier that uniquely identifies a specific instance of a channel tab. Read only.     |
|  displayName            |   string                  |  Name of the tab.     |
|  sortOrderIndex  |   int                     |  Index of the order used for sorting tabs     |
|  webUrl          |   string                  |  Deep link url of the tab instance. Read only.     |
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
  "sortOrderIndex": "string",
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

[Configuring the built-in tab types](../../../concepts/teams-configuring-builtin-tabs.md)
