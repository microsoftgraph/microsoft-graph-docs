---
title: printerCreateOperation resource type
description: Represents a long-running printer registration operation. Derived from printOperation.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printerCreateOperation resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents a long-running printer registration operation. Derived from [printOperation](printoperation.md).

Inherits from [printOperation](printoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get operation](../api/printoperation-get.md) | [printOperation](printoperation.md) | Retrieve a long-running operation within current user or app's tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The operation's identifier. Read-only.|
|status|[printOperationStatus](printoperationstatus.md)|The status of the registration operation. Contains the operation's progress and whether it completed successfully. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the operation was created. Read-only.|
|certificate|String|The signed certificate created during the registration process. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|printer|[printer](printer.md)|The created printer entity. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printerCreateOperation",
  "baseType": "microsoft.graph.printOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerCreateOperation",
  "id": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.printOperationStatus"
  },
  "createdDateTime": "String (timestamp)",
  "certificate": "String"
}
```

