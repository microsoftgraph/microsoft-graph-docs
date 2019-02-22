---
title: "connector resource type"
description: "Here is a JSON representation of the resource."
localization_priority: Normal
---

# connector resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

<!-- Not supported items
|[Create connectorGroup](../api/connector-post-memberof.md) |[connectorGroup](connectorgroup.md)| Associate a connector with a new connectorGroup by posting to the memberOf collection.|
|[Update](../api/connector-update.md) | [connector](connector.md)	| Connectors are created when they are registed with the tenant. |
|[Delete](../api/connector-delete.md) | None |Delete connector object. |

-->

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get connector](../api/connector-get.md) | [connector](connector.md) |Read properties and relationships of connector object.|
|[List memberOf](../api/connector-list-memberof.md) |[connectorGroup](connectorgroup.md) collection| Get the connectorGroup object associated with the connector.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|externalIp|String|The external IP address as detected by the service for the connector machine. Read-only|
|id|String| The object id of the connector. <BR>Read-only.|
|machineName|String| The name of the machine that the connector is running on. <BR>Read-only|
|status|string| Indicates the status of the connector. Possible values are: `active`, `inactive`. Read-only |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|memberOf|[connectorGroup](connectorgroup.md) collection| The connectorGroup that the connect is a member of.<br>Read-only. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
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
  "suppressions": [
    "Error: /api-reference/beta/resources/connector.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
