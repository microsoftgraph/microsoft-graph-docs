---
title: "addToReviewSetOperation resource type"
description: "Adds the results of a sourceCollection to a reviewSet"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# addToReviewSetOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation to add a [sourceCollection](../resources/ediscovery-sourcecollection.md) to a [reviewSet](../resources/ediscovery-reviewset.md).

Inherits from [caseOperation](../resources/ediscovery-caseoperation.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.ediscovery.caseAction](../resources/ediscovery-caseoperation.md#caseaction-values)| The case action for this entity will always be `addToReviewSet`. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|completedDateTime|DateTimeOffset|The date and time the operation was completed. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdDateTime|DateTimeOffset|The date and time the operation was started. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|percentProgress|Int32|The progress of the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|status|[microsoft.graph.ediscovery.caseOperationStatus](../resources/ediscovery-caseoperation.md#caseoperationstatus-values)|The status of the case operation. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### dataCollectionScope values

|Member|Description|
|:----|-----------|
|allVersions|Include all versions of files from sites.|
|linkedFiles|Include **cloud attachment** with emails in the collection.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.ediscovery.reviewSet](../resources/ediscovery-reviewset.md)| The review set to which items matching the source collection query are added to. |
|sourceCollection|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourceCollection.md)| The sourceCollection that items are being added from. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.addToReviewSetOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.addToReviewSetOperation",
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
