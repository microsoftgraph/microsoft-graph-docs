---
title: printer resource type
description: Represents a physical printer device that has been registered with the Universal Print service. Printer resources can be used to manage print jobs, printer settings, printer metadata and registration status.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printer resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents a printer device that has been registered with the Universal Print service. Printer resources can be used to manage print jobs, printer settings, printer metadata and registration status.

This resource supports:
* [Subscribing to change notifications](/graph/universal-print-webhook-notifications).

Inherits from [printerBase](../resources/printerbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create](../api/printer-create.md) | [printerCreateOperation](printerCreateOperation.md) | Create (register) a new printer with Universal Print. |
| [Get](../api/printer-get.md) | [printer](printer.md) | Read the properties and relationships of the printer object. |
| [Update](../api/printer-update.md) | [printer](printer.md) | Update the printer object. |
| [Delete](../api/printer-delete.md) | None | Unregister the physical printer from the Universal Print service. |
| [restoreFactoryDefaults](../api/printer-restorefactorydefaults.md) | None | Restore a printer's default settings to the values specified by the manufacturer. |
| [List jobs](../api/printer-list-jobs.md) | [printJob](printjob.md) collection | Get a list of print jobs that are queued for processing by the printer. |
| [Create job](../api/printer-post-jobs.md) | [printJob](printjob.md) | Create a new print job for the printer. To start printing the job, use [start](../api/printjob-start.md). |
| [List connectors](../api/printer-list-connectors.md) | [printConnector](printconnector.md) collection | Get a list of connectors that this printer is associated with. |
| [List shares](../api/printer-list-shares.md) | [printerShare](printerShare.md) collection | Get a list of printerShares that this printer is associated with. Currently, only one printerShare can be associated with a printer. |
| [List taskTriggers](../api/printer-list-tasktriggers.md) | None | List [printTaskTriggers](printtasktrigger.md) associated with this printer. |
| [Create taskTrigger](../api/printer-post-tasktriggers.md) | [printTaskTrigger](printtasktrigger.md) | Create a [printTaskTrigger](printtasktrigger.md) that runs when print events occur. |
| [Delete taskTrigger](../api/printer-delete-tasktrigger.md) | None | Delete a [printTaskTrigger](printtasktrigger.md) that is associated with the printer. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The document's identifier. Inherited from [printerBase](../resources/printerbase.md). Read-only.|
|displayName|String|The name of the printer. Inherited from [printerBase](../resources/printerbase.md).|
|manufacturer|String|The manufacturer reported by the printer. Inherited from [printerBase](../resources/printerbase.md).|
|model|String|The model name reported by the printer. Inherited from [printerBase](../resources/printerbase.md).|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the printer was registered. Read-only.|
|status|[printerStatus](printerstatus.md)|The processing status of the printer, including any errors. Inherited from [printerBase](../resources/printerbase.md).|
|isShared|Boolean|True if the printer is shared; false otherwise. Read-only.|
|hasPhysicalDevice|Boolean|True if the printer has a physical device for printing. Read-only.|
|isAcceptingJobs|Boolean|Whether the printer is currently accepting new print jobs. Inherited from [printerBase](../resources/printerbase.md).|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer. Inherited from [printerBase](../resources/printerbase.md).|
|defaults|[printerDefaults](printerdefaults.md)|The printer's default print settings. Inherited from [printerBase](../resources/printerbase.md).|
|capabilities|[printerCapabilities](printercapabilities.md)|The capabilities of the printer associated with this printer share. Inherited from [printerBase](../resources/printerbase.md).|
|lastSeenDateTime|DateTimeOffset|The most recent dateTimeOffset when a printer interacted with Universal Print. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|jobs|[printJob](printjob.md) collection| The list of jobs that are queued for printing by the printer.  Inherited from [printerBase](../resources/printerbase.md).|
|shares|[printerShare](printershare.md) collection| The list of printerShares that are associated with the printer. Currently, only one printerShare can be associated with the printer. Read-only. Nullable.|
|connectors|[printConnector](printconnector.md)|The connectors that are associated with the printer.|
|taskTriggers|[printTaskTrigger](printtasktrigger.md) collection|A list of task triggers that are associated with the printer.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printer",
  "baseType": "microsoft.graph.printerBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printer",
  "id": "String (identifier)",
  "displayName": "String",
  "manufacturer": "String",
  "model": "String",
  "isAcceptingJobs": "Boolean",
  "defaults": {
    "@odata.type": "microsoft.graph.printerDefaults"
  },
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "capabilities": {
    "@odata.type": "microsoft.graph.printerCapabilities"
  },
  "status": {
    "@odata.type": "microsoft.graph.printerStatus"
  },
  "registeredDateTime": "String (timestamp)",
  "isShared": "Boolean",
  "hasPhysicalDevice": "Boolean",
  "lastSeenDateTime": "String (timestamp)"
}
```

