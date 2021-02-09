---
title: "audioRoutingGroup resource type"
description: "The audio routing group stores a private audio route between participants in a multiparty conversation. Source is the participant itself and the receivers are a subset of other participants in the multiparty conversation."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# audioRoutingGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The audio routing group stores a private audio route between participants in a multiparty conversation. Source is the participant itself and the receivers are a subset of other participants in the multiparty conversation.

> **Note:** [ConfigureMixer](../api/participant-configuremixer.md) does not involve any routes, it is for the entire call for setting the volume levels for source-receiver combinations.

## Methods

| Method                                                  | Return Type                               | Description                                  |
|:--------------------------------------------------------|:------------------------------------------|:---------------------------------------------|
| [Get audioRoutingGroup](../api/audioroutinggroup-get.md)| [audioRoutingGroup](audioroutinggroup.md) | Read properties and relationships of audioRoutingGroup object.|
| [Update](../api/audioroutinggroup-update.md)            | [audioRoutingGroup](audioroutinggroup.md) | Update receivers list.                       |
| [Delete](../api/audioroutinggroup-delete.md)            | None                                      | Delete the audio routing group.              |

## Properties

| Property      | Type              | Description                                                          |
| :----------   | :---------------- | :--------------------------------------------------------------------|
| id            | string            | Read-only.                                                           |
| receivers     | collection(string) | List of receiving participant ids.                                   |
| routingMode   | string            | Routing group mode.  Possible values are: `oneToOne`, `multicast`.   |
| sources       | collection(string) | List of source participant ids.                                      |

> **Note:** Routing mode determines the restrictions on the sources and receivers. Only the following routing groups are supported.
> - `oneToOne` - sources and receivers have only one participant each.
> - `multicast` - source has one participant but there are multiple receivers. Receivers list may be updated.

> **Note:** If you create many audio routing groups (e.g. a bot per participant), only the audio of the top 4 dominant speakers is forwarded. It means even with customized audio routing group, if the speaker is not loud enough in the main mixer, he/she cannot be heard by the bot even if there is a private audio group just for this speaker and the bot.

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioRoutingGroup"
}-->
```json
{
  "id": "string (identifier)",
  "receivers": [ "string" ],
  "routingMode": "oneToOne | multicast",
  "sources": [ "string" ]
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "audioRoutingGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


