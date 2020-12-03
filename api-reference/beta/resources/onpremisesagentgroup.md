---
title: "onPremisesAgentGroup resource type"
description: "onPremisesAgentGroup resource type."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesAgentGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises agents group. Agent groups enable a tenant admin to assign specific [agents](onpremisesagent.md) to serve specific [published on-premises resources](publishedresource.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List onPremisesAgentGroups](../api/onpremisesagentgroup-list.md) | onPremisesAgentGroups collection | Get an **onPremisesAgentGroup** objects collection. |
| [Get onPremisesAgentGroup](../api/onpremisesagentgroup-get.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Read the properties and relationships of an **onPremisesAgentGroup** object. |
| [Create onPremisesAgentGroup](../api/onpremisesagentgroup-post.md)  | [onPremisesAgentGroup](onpremisesagentgroup.md) | Create a new **onPremisesAgentGroup**. |
| [Update onPremisesAgentGroup](../api/onpremisesagentgroup-update.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Update an **onPremisesAgentGroup** object. |
| [Delete  onPremisesAgentGroup](../api/onpremisesagentgroup-delete.md) | None | Delete an **onPremisesAgentGroup** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display name of the **onPremisesAgentGroup**.|
|id|String| The object ID of the **onPremisesAgentGroup**. Read-only.|
|isDefault|Boolean|Indicates if the **onPremisesAgentGroup** is the default agent group. Only a single agent group can be the default **onPremisesAgentGroup** and is set by the system.|
|publishingType|string| Possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agents|[onPremisesAgent](onpremisesagent.md) collection| List of **onPremisesAgent** that are assigned to an **onPremisesAgentGroup**. Read-only. Nullable.|
|publishedResources|[publishedResource](publishedresource.md) collection| List of **publishedResource** that are assigned to an **onPremisesAgentGroup**. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgentGroup",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "isDefault": true,
  "publishingType": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesAgentGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


