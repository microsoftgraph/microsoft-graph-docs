# teamsChannelTab resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A teamsChannelTab is a [tab](../resources/teamschanneltab.md) that's pinned (attached) to a [channel](channel.md) within a [team](team.md). 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List tabs](../api/channels_tabs_list.md) | [teamsChannelTab](teamschanneltab.md) | Lists tabs pinned to a channel.|
|[Add tab](../api/channels_tabs_add.md) | [teamsChannelTab](teamschanneltab.md) | Adds (pins) a tab to a channel.|
|[Remove tab](../api/channels_tabs_delete.md) | [teamsChannelTab](teamschanneltab.md) | Removes (unpins) a tab from a channel.|
|[Update tab](../api/channels_tabs_update.md) | [teamsChannelTab](teamschanneltab.md) | Updates the tab properties.|


## Properties

##### Properties

|Property|Type|Required|ReadOnly|Description|
|-|-|-|-|-|
|  `id`              |   `string`                  |✓|✓|  Identifier that uniquely identifies a specific instance of a channel tab     |
|  `name`            |   `string`                  |✓| |  Name of the tab     |
|  `appId`           |   `string`                  |✓|✓|  App definition identifier of the tab. This value cannot be changed after tab creation.     |
|  `sortOrderIndex`  |   `int`                     |✓| |  Index of the order used for sorting tabs     |
|  `chatMessageId`   |   `string`                  |✓|✓|  Identifier of the chat message associated with the tab     |
|  `webUrl`          |   `string`                  |✓|✓|  Deep link url of the tab instance     |
|  `settings`        |   `TeamsChannelTabSettings` ||  |  Container for custom settings applied to a tab. The tab is considered configured only once this property is set.     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team"
}-->

```json
{  
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
