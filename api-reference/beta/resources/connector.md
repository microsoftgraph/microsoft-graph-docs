# connector resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

<!-- Not supported items
|[Create connectorGroup](../api/connector_post_memberof.md) |[connectorGroup](connectorgroup.md)| Associate a connector with a new connectorGroup by posting to the memberOf collection.|
|[Update](../api/connector_update.md) | [connector](connector.md)	| Connectors are created when they are registed with the tenant. |
|[Delete](../api/connector_delete.md) | None |Delete connector object. |

-->

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get connector](../api/connector_get.md) | [connector](connector.md) |Read properties and relationships of connector object.|
|[List memberOf](../api/connector_list_memberof.md) |[connectorGroup](connectorgroup.md) collection| Get the connectorGroup object associated with the connector.|

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
<!-- {
  "type": "#page.annotation",
  "description": "connector resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
