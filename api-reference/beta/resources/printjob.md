---
title: printJob resource type
description: Represents a print job that has been queued for a printer.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a print job that has been queued for a printer.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printjob-get.md) | [printJob](printjob.md) | Read properties and relationships of printJob object. |
| [Create](../api/printer-post-jobs.md) | [printJob](printjob.md) | Create a new print job object. |
| [Start](../api/printjob-startprintjob.md)|None|Start the print job.|
| [Cancel](../api/printjob-cancelprintjob.md)|None|Cancel the print job.|

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printer's GUID. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the job was created. Read-only.|
|status|[printJobStatus](printjobstatus.md)|The status of the print job. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|createdBy|[userIdentity](useridentity.md)| Read-only. Nullable.|
|documents|[printDocument](printdocument.md) collection| Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printJob",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": {"@odata.type": "microsoft.graph.printJobStatus"},
  "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
  "documents": [ {"@odata.type": "microsoft.graph.printDocument"} ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->