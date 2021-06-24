---
title: print resource type
description: When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of printServiceEndpoints that can be used to manage printers and print jobs within Universal Print.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# print resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of [printServiceEndpoints](printserviceendpoint.md) that can be used to manage printers and print jobs within Universal Print.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List connectors](../api/print-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of print connectors. |
| [List printers](../api/print-list-printers.md) | [printer](printer.md) collection | Get a list of printers. |
| [List shares](../api/print-list-shares.md) | [printerShare](printershare.md) collection | Get a list of printer shares. |
| [List services](../api/print-list-services.md) | [printService](printservice.md) collection | Get a list of services. |
| [Create printerShare](../api/print-post-shares.md) | [printerShare](printershare.md) | Create a new printer share by posting to the **shares** collection. |
| [Create printer](../api/printer-create.md) | [printerCreateOperation](printerCreateOperation.md) | Create (register) a new printer with Universal Print. |
| [Update settings](../api/print-update-settings.md) |  [printSettings](printsettings.md) | Updates tenant-wide settings for the Universal Print service. |
| [List taskDefinitions](../api/print-list-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) collection | Get a tenant-wide list of printTaskDefinitions created within Universal Print. |
| [Create taskDefinition](../api/print-post-taskdefinitions.md) | [printTaskDefinition](printtaskdefinition.md) | Create a new printTaskDefinition. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settings|[printSettings](../resources/printsettings.md)|Tenant-wide settings for the Universal Print service.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|services|[printService](printservice.md) collection|The list of available Universal Print service endpoints.|
|printers|[printer](printer.md) collection|The list of printers registered in the tenant.|
|shares|[printerShare](printershare.md) collection|The list of printer shares registered in the tenant.|
|connectors|[printConnector](printconnector.md) collection|The list of available print connectors.|
|operations|[printOperation](../resources/printoperation.md) collection|The list of print long running operations.|
|services|[printService](../resources/printservice.md) collection|The list of print service instances for various components of the printing infrastructure.|
|taskDefinitions|[printTaskDefinition](../resources/printtaskdefinition.md) collection|List of abstract definition for a task that can be triggered when various events occur within Universal Print.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.print",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.print",
  "settings": {
    "@odata.type": "microsoft.graph.printSettings"
  }
}
```

