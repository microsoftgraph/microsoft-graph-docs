---
title: "caseOperation resource type"
description: "An abstract entity that represents a long-running eDiscovery process."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# caseOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract entity that represents a long-running eDiscovery process. It contains a common set of properties that are shared among inheriting entities.  Entities that derive from **caseOperation** include:

- [caseExportOperation](../resources/ediscovery-caseexportoperation.md)
- [tagOperation](../resources/ediscovery-tagoperation.md)
- [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.ediscovery.caseAction](../resources/ediscovery-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. |
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. |
|createdDateTime|DateTimeOffset| The date and time the operation was created. |
|id|String| The ID for the operation. Read-only. |
|percentProgress|Int32| The progress of the operation. |
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. |
|status|[microsoft.graph.ediscovery.caseOperationStatus](../resources/ediscovery-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### caseAction values

|Member|Description|
|:----|-----------|
| addToReviewSet | The operation represents adding data to a review set from an eDiscovery collection. |
| applyTags | The operation represents bulk tagging documents in a review set for the specified review set query. |
| contentExport | The operation represents a content export from a review set. |
| convertToPdf | The operation represents converting documents to PDFs with redactions. |
| estimateStatistics  | The operation represents searching against Microsoft 365 services such as Exchange, SharePoint, and OneDrive for business. |

### caseOperationStatus values

|Member|Description|
|:----|-----------|
| notStarted | The operation has not yet started. |
| submissionFailed | Submission of the operation failed. |
| running | The operation is currently running. |
| succeeded | The operation was successfully completed without any errors. |
| partiallySucceeded | The operation completed, but there were errors - See [resultInfo](../resources/resultinfo.md) for error details. |
| failed | The operation failed - See result info for error details. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.caseOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.caseOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```
