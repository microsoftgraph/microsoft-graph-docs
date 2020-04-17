---
title: "connector resource type"
description: "Represents an Application Proxy connector."
author: "japere"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# connector resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Connectors are lightweight agents that sit on-premises and facilitate the outbound connection to the [Azure AD Application Proxy](https://aka.ms/whyappproxy) service. Each connector is part of a [connectorGroup](connectorgroup.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get connector](../api/connector-get.md) | [connector](connector.md) | Read properties and relationships of connector object. |
| [Create connectorGroup](../api/connector-post-memberof.md) | [connectorGroup](connectorgroup.md) | Create a new connectorGroup by posting to the connectorGroup collection. |
| [List memberOf](../api/connector-list-memberof.md) | [connectorGroup](connectorgroup.md) collection | Get a connectorGroup object collection. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalIp|String| The external IP address as detected by the the connector server. Read-only. |
|id|String| Unique identifier of the connector. Read-only. |
|machineName|String| The machine name the connector is installed and running on. |
|status|string| Indicates the status of the connector. Possible values are: `active`, `inactive`. Read-only. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|memberOf|[connectorGroup](connectorgroup.md) collection| The connectorGroup that the connector is a member of. Read-only. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connector"
}-->

```json
{
  "externalIp": "String",
  "id": "String (identifier)",
  "machineName": "String",
  "status": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "connector resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
