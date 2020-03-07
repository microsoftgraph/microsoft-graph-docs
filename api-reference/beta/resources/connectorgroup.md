---
title: "connectorGroup resource type"
description: "Represents an Application Proxy connectorGroup."
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
author: "japere"
doc_type: resourcePageType
---

# connectorGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Each Application Proxy connector is always part of a connector group. All the connectors that belong to the same connector group act as a separate unit for high-availability and load balancing. If you don't create connector groups, then all your connectors will be part of the default group. 

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get connectorGroup](../api/connectorgroup-get.md) | [connectorGroup](connectorgroup.md) | Read properties and relationships of connector group object. |
|[Create application](../api/connectorgroup-post-applications.md) |[application](application.md)| Associate an application with the connector group by posting to the applications collection. |
|[List applications](../api/connectorgroup-list-applications.md) |[application](application.md) collection| Get the associated application object collection. |
|[Create connector](../api/connectorgroup-post-members.md) |[connector](connector.md)| Add a connector to the connector group by posting to the members collection. |
|[List members](../api/connectorgroup-list-members.md) |[connector](connector.md) collection| Get a connector object collection. |
|[Update](../api/connectorgroup-update.md) | [connectorGroup](connectorgroup.md)	| Update connector group object. |
|[Delete](../api/connectorgroup-delete.md) | None | Delete connector group object. All connectors must be removed from the connector group before a connector group can be deleted. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|connectorGroupType|string| The type of connectors that will be used for the connector group. Possible values: `applicationProxy`. |
|id|string| Unique identifier for this connector group. Read-only. |
|isDefault|boolean| Indicates if the connector group is the default connector group. Only a single connector group can be the default connector group and is pre-set by the system. |
|name|string| The name associated with the connector group. |
|region|string| The region the connector group is assigned to and will optimize traffic for. Possible values are: `nam`, `eur`, `aus`, `asia`, `ind`, `unknownFutureValue`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|applications|[application](application.md) collection| Read-only. Nullable.|
|members|[connector](connector.md) collection| Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connectorGroup"
}-->

```json
{
  "connectorGroupType": "string",
  "id": "String (identifier)",
  "isDefault": true,
  "name": "String",
  "region": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "connectorGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
