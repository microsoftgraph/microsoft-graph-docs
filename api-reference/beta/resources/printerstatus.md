---
title: printerStatus resource type
description: Represents the processing status of the printer, including any errors.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printerStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing status of the printer, including any errors.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|state|printerProcessingState|The current processing state. Valid values are described in the following table. Read-only.|
|details|printerProcessingStateDetail collection|The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.|
|description|String|A human-readable description of the printer's current processing state. Read-only.|

### printerProcessingState values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The processing state reported by the printer is unknown.|
|idle|1|The printer is idle and ready to accept new print jobs.|
|processing|2|The printer is currently processing a print job and will process any pending jobs upon completion.|
|stopped|3|The printer encountered an issue (for example, ran out of paper in the active tray) and cannot continue the current print job until the issue is addressed. See the **details** value(s) or the **description** value for more information.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

### printerProcessingStateDetail values

|Member|Value|Description|
|:---|:---|:---|
|paused|0| An ongoing print job was paused.|
|mediaJam|2|Media in one or more trays is jammed.|
|mediaNeeded|3|Media in the currently-used input tray needs to be replaced before the job can continue.|
|mediaLow|4|Media in one or more trays is almost exhausted.|
|mediaEmpty|5|Media in one or more trays is exhausted.|
|coverOpen|6|One or more covers are open.|
|interlockOpen|7|One or more interlock devices are open.|
|outputTrayMissing|9|One or more output trays are missing.|
|outputAreaFull|10|One or more output trays are full and cannot accept more media.|
|markerSupplyLow|11|One or more marker sources (for example, ink, toner or ribbon) are low.|
|markerSupplyEmpty|12|One or more marker sources (for example, ink, toner or ribbon) are exhausted.|
|inputTrayMissing|13|One or more input trays are not in the device.|
|outputAreaAlmostFull|14|One or more output area is almost full (for example, tray, stacker, collator).|
|markerWasteAlmostFull|15|The device marker supply waste receptacle is almost full.|
|markerWasteFull|16|The device marker supply waste receptacle is full.|
|fuserOverTemp|17|The fuser temperature is above normal.|
|fuserUnderTemp|18|The fuser temperature is below normal.|
|other|19|Any other reason that does not fall in rest of the reasons.|
|none|20|No reasons.|
|movingToPaused|21|Someone paused the Printer using the Pause-Printer operation.|
|shutdown|22|Someone removed a Printer object from service, and the device may be powered down or physically removed.|
|connectingToDevice|23|Printer is in the process of connecting to a shared network Output Device.|
|timedOut|24|The server was unable to get a response from the output device.|
|stopping|25|The Printer object is in the process of stopping the device.|
|stoppedPartially|26|One or more output devices are stopped.|
|tonerLow|27|The device is low on toner.|
|tonerEmpty|28|The device is out of toner.|
|spoolAreaFull|29|The limit of persistent storage allocated for spooling has been reached.|
|doorOpen|30|One or more doors on the device are open.|
|opticalPhotoConductorNearEndOfLife|31|The optical photo conductor is near end of life.|
|opticalPhotoConductorLifeOver|32|The optical photo conductor is no longer functioning.|
|developerLow|33|The device is low on developer.|
|developerEmpty|34|The device is out of developer.|
|interpreterResourceUnavailable|35|An interpreter resource is unavailable (e.g. font, form).|
|unknownFutureValue|36|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerStatus"
}-->

```json
{
    "state": "String",
    "details": ["String"],
    "description": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

