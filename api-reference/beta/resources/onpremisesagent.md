---
title: "onPremisesAgent resource type"
description: "onPremisesAgent resource type."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesAgent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises agent. On-premises agents installed by a tenant administrator can be configured to access/handle requests to a particular [published resource](publishedresource.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List onPremisesAgents](../api/onpremisesagent-list.md) | [onPremisesAgent](onpremisesagent.md) collection | Get an **onPremisesAgents** object collection. |
| [Get onPremisesAgent](../api/onpremisesagent-get.md) | [onPremisesAgent](onpremisesagent.md) | Read the properties and relationships of an **onPremisesAgent** object. |
| [Assign onPremisesAgent to onPremisesAgentGroup](../api/onpremisesagent-post-agentgroups.md) | None | Assign an **onPremisesAgent** to an **onPremisesAgentGroup**.|
| [Remove onpremisesAgent from an onPremisesAgentGroup](../api/onpremisesagent-delete-agentgroups.md) | None | Remove an **onPremisesAgent** from an **onPremisesAgentGroup**. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalIp|String|The external IP address as detected by the service for the agent machine. Read-only|
|id|String| The object id of the onPremisesAgent. Read-only.|
|machineName|String|The name of the machine that the aggent is running on. Read-only|
|status|string| Possible values are: `active`, `inactive`.|
|publishingType|string| Possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of **onPremisesAgentGroups** that an **onPremisesAgent** is assigned to. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgent",
  "baseType": "",
  "keyProperty": "id"
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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


