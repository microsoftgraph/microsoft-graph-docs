# onPremisesAgent resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesAgent](../api/onpremisesagent_get.md) | [onPremisesAgent](onpremisesagent.md) | Read properties and relationships of onPremisesAgent object. |
| [List onPremisesAgents](../api/onpremisesagent_list.md) | [onPremisesAgent](onpremisesagent.md) collection | Get an onPremisesAgents object collection. |
| [Assign onPremisesAgent to onPremisesAgentGroup](../api/onpremisesagent_post_agentgroups.md) | None |  |
| [Remove onpremisesAgent from an onPremisesAgentGroup](../api/onpremisesagent_delete_agentgroups.md) | None |  |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalIp|String||
|id|String| Read-only.|
|machineName|String||
|status|string| Possible values are: `active`, `inactive`.|
|publishingType|string| Possible values are: `appProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgent"
}-->

```json
{
  "externalIp": "String",
  "id": "String (identifier)",
  "machineName": "String",
  "status": "string",
  "supportedPublishingTypes": ["string"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->