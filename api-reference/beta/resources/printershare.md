---
title: printerShare resource type
description: Represents a printer that is intended to be discoverable by users and printing applications.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerShare resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a printer that is intended to be discoverable by users and printing applications.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List printerShares](../api/print-list-printershares.md) | [printerShare](printershare.md) collection | Get a list of printer shares in the tenant. |
| [Get printerShare](../api/printershare-get.md) | [printerShare](printershare.md) | Read properties and relationships of a printerShare object. |
| [Update](../api/printershare-update.md) | [printerShare](printershare.md) | Update a printerShare object. |
| [Delete](../api/printershare-delete.md) | None | Unshare a printer. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The printerShare's identifier. Read-only.|
|name|String|The name of the printer share that print clients should display.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the printer share was created. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|printer|[printer](printer.md)|The printer that this printer share is related to. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerShare",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerShare resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->