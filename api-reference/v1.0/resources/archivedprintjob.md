---
title: archivedPrintJob resource type
description: A record of a "final state" (completed, aborted or failed) print job that is used for reporting purposes. This is not an active print job.
author: nilakhan
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# archivedPrintJob resource type

Namespace: microsoft.graph

A record of a "final state" (completed, aborted or failed) print job that is used for reporting purposes. This is not an active print job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The archived print job's GUID. Read-only.|
|printerId|String|The printer ID that the job was queued for. Read-only.|
|processingState|printJobProcessingState|The print job's final processing state. Read-only.|
|createdDateTime|DateTimeOffset|The dateTimeOffset when the job was created. Read-only.|
|acquiredDateTime|DateTimeOffset|The dateTimeOffset when the job was acquired by the printer, if any. Read-only.|
|completionDateTime|DateTimeOffset|The dateTimeOffset when the job was completed, canceled or aborted. Read-only.|
|acquiredByPrinter|Boolean|True if the job was acquired by a printer; false otherwise. Read-only.|
|copiesPrinted|Int32|The number of copies that were printed. Read-only.|
|createdBy|[userIdentity](useridentity.md)|The user who created the print job. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.archivedPrintJob"
}-->
```json
	{	
  "@odata.type": "#microsoft.graph.archivedPrintJob",	
  "id": "String (identifier)",	
  "printerId": "String",	
  "processingState": "String",	
  "createdDateTime": "String (timestamp)",	
  "acquiredDateTime": "String (timestamp)",	
  "completionDateTime": "String (timestamp)",	
  "acquiredByPrinter": "Boolean",	
  "copiesPrinted": "Integer",	
  "createdBy": {	
    "@odata.type": "microsoft.graph.userIdentity"	
  }	
}
```