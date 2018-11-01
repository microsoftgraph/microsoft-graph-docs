---
apiDocType: resourcePageType
---
# teamsTab resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A teamsTab is a [tab](../resources/teamstab.md) that's pinned (attached) to a [channel](channel.md) within a [team](team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs](../api/channels_tabs_list.md) | [teamsTab](teamstab.md) | Lists tabs pinned to a channel.|
|[Get tab](../api/channels_tabs_get.md) | [teamsTab](teamstab.md) | Reads a tab pinned to a channel.|
|[Add tab](../api/channels_tabs_add.md) | [teamsTab](teamstab.md) | Adds (pins) a tab to a channel.|
|[Remove tab](../api/channels_tabs_delete.md) | None | Removes (unpins) a tab from a channel.|
|[Update tab](../api/channels_tabs_update.md) | [teamsTab](teamstab.md) | Updates the tab properties.|


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|  id              |   string                  |  Identifier that uniquely identifies a specific instance of a channel tab. Read only.     |
|  name            |   string                  |  Name of the tab.     |
|  teamsAppId           |   string             |  App definition identifier of the tab. This value cannot be changed after tab creation.     |
|  sortOrderIndex  |   int                     |  Index of the order used for sorting tabs     |
|  webUrl          |   string                  |  Deep link url of the tab instance. Read only.     |
|  configuration        |   [teamsTabConfiguration](teamstabconfiguration.md) |  Container for custom settings applied to a tab. The tab is considered configured only once this property is set.     |

## JSON representation

The following is a JSON representation of the resource.


<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsTab"
}-->

```json
{  
  "id": "guid",
  "name": "string",
  "teamsAppId": "string",
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
