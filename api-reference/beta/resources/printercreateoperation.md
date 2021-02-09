---
title: printerCreateOperation resource type
description: Represents a long-running printer registration operation. Derived from printOperation.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerCreateOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running printer registration operation. Derived from [printOperation](printoperation.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get operation](../api/printoperation-get.md) | [printOperation](printoperation.md) | Retrieve a long-running operation within current user or app's tenant. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The operation's identifier. Read-only.|
|status|[printOperationStatus](printoperationstatus.md)|The status of the registration operation. Contains the operation's progress and whether it completed successfully. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the operation was created. Read-only.|
|certificate|String|The signed certificate created during the registration process. Read-only.|
|printer|[printer](printer.md)|The created printer entity. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerCreateOperation",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
    "id": "String (identifier)",
    "status": {"@odata.type": "microsoft.graph.printOperationStatus"},
    "createdDateTime": "2020-06-15T19:54:14.853Z",
    "certificate": "",
    "printer": {"@odata.type": "microsoft.graph.printer"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerCreateOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

