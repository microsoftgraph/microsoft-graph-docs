---
title: "publishedResource resource type"
description: "publishedResource resource type."
localization_priority: Normal
author: "japere"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# publishedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises published resource. A tenant administrator can publish various types of on-premises resources - enterprise applications, domain controllers, servers, etc. [On-premises agents](onpremisesagent.md) installed by a tenant administrator can be configured to access/handle requests to a particular published resource.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List publishedResources](../api/publishedresource-list.md) | [publishedResource](publishedresource.md) objects collection | Get a **publishedResources** object collection. |
| [Get publishedResource](../api/publishedresource-get.md) | [publishedResource](publishedresource.md) | Read the properties and relationships of a **publishedResource** object. |
| [Create publishedResource](../api/publishedresource-post.md) |  [publishedResource](publishedresource.md)  | Create a new **publishedResource**. |
| [Update publishedResource](../api/publishedresource-update.md) | [publishedResource](publishedresource.md) | Update a **publishedResource** object. |
| [Delete  publishedResource](../api/publishedresource-delete.md) | None | Delete a **publishedResource** object. |
| [Assign publishedResource to onPremisesAgentGroup](../api/publishedresource-post-agentgroups.md) | None | Assign a **publishedResource** object to an **onPremisesAgentGroup**. |
| [Remove publishedResource from onPremisesAgentGroup](../api/publishedresource-delete-agentgroups.md) | None |  Remove a **publishedResource** object from an **onPremisesAgentGroup**.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String| Display Name of the publishedResource.|
|id|String| The object id of the publishedResource. Read-only.|
|publishingType|string| Possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|
|resourceName|String|Name of the publishedResource.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of **onPremisesAgentGroups** that a **publishedResource** is assigned to. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.publishedResource",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "publishingType": "string",
  "resourceName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "publishedResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


