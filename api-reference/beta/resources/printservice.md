---
title: printService resource type
description: Represents an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (e.g., discovery, notifications, registration and IPP) and have one or more endpoints.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (discovery, notifications, registration, and IPP) and have one or more endpoints.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List services](../api/print-list-services.md) | [printService](printservice.md) collection | Get a list of Universal Print services. |
| [Get service](../api/printservice-get.md) | [printService](printservice.md) | Read the properties and relationships of service object. |
| [List endpoints](../api/printservice-list-endpoints.md) | [printServiceEndpoint](printserviceendpoint.md) collection | Get a list of endpoints that a service provides. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The service's identifier. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|endpoints|[printServiceEndpoint](printserviceendpoint.md) collection| Endpoints that can be used to access the service. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printService",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "endpoints": [ {"@odata.type": "microsoft.graph.printServiceEndpoint"} ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

