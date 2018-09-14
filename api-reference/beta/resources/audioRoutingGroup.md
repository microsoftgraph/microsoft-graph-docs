# AudioRoutingGroup resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The audio routing group stores information about a private (participant-owned) Audio Routing Group.  Audio Routing Groups are valid in a multiparty conversation and are used to establish routes (incoming and outgoing audio from the participant.)  Source is the participant itself and the receivers are a subset of other participants in the multiparty conversation. 

> **Note:** [ConfigureMixer](../api/participant_configureMixer.md) does not involve any routes, it is for the entire call for setting the volume levels for source-receiver combinations.

## Methods

| Method                                                  | Return Type                               | Description                                  |
|:--------------------------------------------------------|:------------------------------------------|:---------------------------------------------|
| [Get audioRoutingGroup](../api/audioRoutingGroup_get.md)| [audioRoutingGroup](audioRoutingGroup.md) | Read properties and relationships of audioRoutingGroup object.|
| [Update](../api/audioroutinggroup_update.md)            | [audioRoutingGroup](audioRoutingGroup.md) | Update receivers list.                       |
| [Delete](../api/audioRoutingGroup_delete.md)            | None                                      | Delete the audio routing group.              |

## Properties

| Property      | Type              | Description                                                          |
| :----------   | :---------------- | :--------------------------------------------------------------------|
| id            | String            | Read-only. Server generated.                                         |
| receivers     | String Collection | List of receiving participant ids.                                   |
| routingMode   | String            | Routing group mode.  Possible values are: `oneToOne`, `multicast`.   |
| sources       | String Collection | List of source participant ids.                                      |

> **Note:** Routing mode determines the restrictions on the sources and receivers. Only the following routing groups are supported.
> - `oneToOne` - sources and receivers have only one participant each.
> - `multicast` - source has one participant but there are multiple receivers. Receivers list may be updated.

> **Note:** If you create many audio routing groups (e.g. a bot per participant), only the audio of the top 4 dominant speakers is forwarded. It means even with customized audio routing group, if the speaker is not loud enough in the main mixer, he/she cannot be heard by the bot even if there is a private audio group just for this speaker and the bot.

## Relationships
None

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioRoutingGroup"
}-->
```json
{
  "id": "String (identifier)",
  "receivers": [ "String" ],
  "routingMode": "oneToOne | multicast",
  "sources": [ "String" ]
}
```

## Example - oneToOne

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.audioRoutingGroup"
}-->
```json
{
  "@odata.id": "app/calls/57DAB8B1894C409AB240BD8BEAE78896/audioRoutingGroups/oneToOne",
  "id": "oneToOne",
  "routingMode": "oneToOne",
  "sources": [
    "0698446E77E24E4D85F80597083CB830"
  ],
  "receivers": [
    "123456W7-7E24-E4D8-5F80-597083CB8302"
  ]
}
```

## Example - multicast

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.audioRoutingGroup"
}-->
```json
{
  "@odata.id": "app/calls/57DAB8B1894C409AB240BD8BEAE78896/audioRoutingGroups/multicast",
  "id": "multicast",
  "routingMode": "multicast",
  "sources": [
    "0698446E77E24E4D85F80597083CB830"
  ],
  "receivers": [
    "123456W7-7E24-E4D8-5F80-597083CB8302",
    "A239BDED-3A52-4D66-80DF-213EB3BA6695"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "audioRoutingGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
