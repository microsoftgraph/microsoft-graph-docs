---
title: printServiceEndpoint resource type
description: Represents URI and identifying information for a print service instance.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printServiceEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents URI and identifying information for a print service instance.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get endpoint](../api/printserviceendpoint-get.md) | [printServiceEndpoint](printserviceendpoint.md) | Read the properties and relationships of endpoint object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|A human-readable display name for the endpoint.|
|name|String|A unique name that identifies the service that the endpoint provides. Possible values are: `discovery` (Discovery Service), `notification` (Notification Service), `ipp` (IPP Service), and `registration` (Registration Service). Read-only.|
|uri|String|The URI that can be used to access the service.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printServiceEndpoint"
}-->

```json
{
  "displayName": "String",
  "name": "String (identifier)",
  "uri": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printServiceEndpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

