---
title: print resource type
description: When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of printServiceEndpoints that can be used to manage printers and print jobs within Universal Print.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# print resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of [printServiceEndpoints](printserviceendpoint.md) that can be used to manage printers and print jobs within Universal Print.

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List connectors](../api/print-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of print connectors. |
| [List printers](../api/print-list-printers.md) | [printer](printer.md) collection | Get a list of printers. |
| [List printerShares](../api/print-list-printershares.md) | [printerShare](printershare.md) collection | Get a list of printer shares. |
| [List services](../api/print-list-services.md) | [printService](printservice.md) collection | Get a list of services. |
| [Create printerShare](../api/print-post-printershares.md) | [printerShare](printershare.md) | Create a new printer share by posting to the **printerShares** collection. |
| [Update settings](../api/print-update-settings.md) |  [printSettings](printsettings.md) | Updates tenant-wide settings for the Universal Print service. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|settings|[printSettings](printsettings.md)|Tenant-wide settings for the Universal Print service.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|services|[printService](printservice.md) collection|The list of available Universal Print service endpoints.|
|printers|[printer](printer.md) collection|The list of printers registered in the tenant.|
|printerShares|[printerShare](printershare.md) collection collection|The list of printer shares registered in the tenant.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.print",
  "keyProperty": "settings"
}-->

```json
{
  "settings": {"@odata.type": "microsoft.graph.printSettings"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "print resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [ 
    "Error: Resource print has documented navigation properties, but we thought it was a complex type!",
    "Resource print has documented navigation properties, but we thought it was a complex type!"
}-->