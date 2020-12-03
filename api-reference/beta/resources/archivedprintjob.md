---
title: archivedPrintJob resource type
description: A record of a "final state" (completed, aborted or failed) print job that is used for reporting purposes. This is not an active print job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# archivedPrintJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|pageCount|Int32|The total number of pages that were printed. Read-only.|
|blackAndWhitePageCount|Int32|The number of black and white pages that were printed. Read-only.|
|colorPageCount|Int32|The number of color pages that were printed. Read-only.|
|simplexPageCount|Int32|The number of simplex (single-sided) pages that were printed. Read-only.|
|duplexPageCount|Int32|The number of duplex (double-sided) pages that were printed. Read-only.|
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
    "id": "String (identifier)",
    "printer": {"@odata.type": "microsoft.graph.directoryObject"},
    "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
    "processingState": {"@odata.type": "microsoft.graph.printJobProcessingState"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "archivedPrintJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

