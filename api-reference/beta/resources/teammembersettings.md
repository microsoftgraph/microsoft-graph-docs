# teamMemberSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the [team](team.md).

## teamMemberSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|Boolean|If set to true, members can add and update channels.|
|allowDeleteChannels|Boolean|If set to true, members can delete channels.|
|allowAddRemoveApps|Boolean|If set to true, members can add and remove apps.|
|allowCreateUpdateRemoveTabs|Boolean|If set to true, members can add, update, and remove tabs. |
|allowCreateUpdateRemoveConnectors|Boolean|If set to true, members can add, update, and remove connectors.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamMemberSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowDeleteChannels": true,
  "allowAddRemoveApps": true,
  "allowCreateUpdateRemoveTabs": true,
  "allowCreateUpdateRemoveConnectors": true    
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's memberSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
