---
title: printServiceEndpoint resource type
description: Represents URI and identifying information for a print service instance.
author: braedenp-msft
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printServiceEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents URI and identifying information for a print service instance.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get endpoint](../api/printserviceendpoint-get.md) | [printServiceEndpoint](printserviceendpoint.md) | Read the properties and relationships of endpoint object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A human-readable display name for the endpoint.|
|id|String|A unique name that identifies the service that the endpoint provides. Possible values are: `discovery` (Discovery Service), `notification` (Notification Service), `ipp` (IPP Service), and `registration` (Registration Service). Read-only.|
|uri|String|The URI that can be used to access the service.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printServiceEndpoint",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printServiceEndpoint",
  "id": "String (identifier)",
  "displayName": "String",
  "uri": "String"
}
```

