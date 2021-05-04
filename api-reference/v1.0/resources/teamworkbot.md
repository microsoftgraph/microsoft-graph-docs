---
title: "teamworkBot resource type"
description: "A bot in Microsoft Teams ecosystem."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkBot resource type

Namespace: microsoft.graph

Represents a bot in the Microsoft Teams ecosystem.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get bot](../api/teamworkbot-get.md)|[teamworkBot](../resources/teamworkbot.md)|Read the properties and relationships of a [teamworkBot](../resources/teamworkbot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the bot associated with the specific [teamsAppDefinition](../resources/teamsappdefinition.md). This value is usually a GUID.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkBot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkBot",
  "id": "String (identifier)"
}
```

## See also

- To get bots installed in a team, see example 2 in [List apps in team](../api/team-list-installedapps.md). <!-- - To get bots installed in a chat, see example 2 in [List apps in chat](../api/chat-list-installedapps.md). -->
- To get bots installed in the personal scope of a user, see example 2 in [List apps installed for user](../api/userteamwork-list-installedapps.md).



