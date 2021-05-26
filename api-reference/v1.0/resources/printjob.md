---
title: printJob resource type
description: Represents a print job that has been queued for a printer.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printJob resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents a print job that has been queued for a printer.

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/printjob-get.md) | [printJob](printjob.md) | Read properties and relationships of printJob object. |
| [Create](../api/printer-post-jobs.md) | [printJob](printjob.md) | Create a new print job object. |
| [Update](../api/printjob-update.md) | [printJob](printjob.md) | Update a print job object. |
| [Start](../api/printjob-start.md)|None|Start the print job.|
| [Cancel](../api/printjob-cancel.md)|None|Cancel the print job.|
| [Abort](../api/printjob-abort.md)|None|Abort the print job.|
| [Redirect (to another printer)](../api/printjob-redirect.md) | [printJob](printjob.md) | A print job that is queued for the destination printer. |


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The printer's GUID. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the job was created. Read-only.|
|status|[printJobStatus](printjobstatus.md)|The status of the print job. Read-only.|
|configuration|[printJobConfiguration](printJobConfiguration.md)|A group of settings that a printer should use to print a job.|
|isFetchable|Edm.Boolean|If true, document can be fetched by printer.|
|redirectedFrom|Edm.String|Contains the source job URL, if the job has been redirected from another printer.|
|redirectedTo|Edm.String|Contains the destination job URL, if the job has been redirected to another printer.|
|createdBy|[userIdentity](useridentity.md)| Read-only. Nullable.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|documents|[printDocument](printdocument.md) collection| Read-only.|
|tasks|[printTask](printtask.md) collection|A list of [printTasks](printtask.md) that were triggered by this print job.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printJob",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": {
    "@odata.type": "microsoft.graph.printJobStatus"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.printJobConfiguration"
  },
  "redirectedTo": "String",
  "redirectedFrom": "String",
  "isFetchable": "Boolean"
}
```

