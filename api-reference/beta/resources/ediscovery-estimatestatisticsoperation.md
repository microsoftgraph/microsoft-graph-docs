---
title: "estimateStatisticsOperation resource type"
description: "Represents the operation that handles estimating the count and size of a source collection."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# estimateStatisticsOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the operation that handles estimating the count and size of a [sourceCollection](../resources/ediscovery-sourcecollection.md). For details, see [Collect data for a case in Advanced eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).

Inherits from [caseOperation](../resources/ediscovery-caseoperation.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.ediscovery.caseAction| The type of operation. The case action for this entity will always be `estimateStatistics`. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|completedDateTime|DateTimeOffset|The date and time the operation was completed. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|createdDateTime|DateTimeOffset|The date and time the operation was started. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|indexedItemCount|Int64|The estimated count of items for the **sourceCollection** that matched the content query.|
|indexedItemsSize|Int64|The estimated size of items for the **sourceCollection** that matched the content query.|
|mailboxCount|Int32|The number of mailboxes that had search hits.|
|percentProgress|Int32|The progress of the operation. Read-only. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|siteCount|Int32|The number of mailboxes that had search hits.|
|status|[microsoft.graph.ediscovery.caseOperationStatus](../resources/ediscovery-caseoperation.md#caseoperationstatus-values)|The status of the case operation. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|unindexedItemCount|Int64|The estimated count of unindexed items for the collection.|
|unindexedItemsSize|Int64|The estimated size of unindexed items for the collection.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|sourceCollection|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|eDiscovery collection, commonly known as a search.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.estimateStatisticsOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->

``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/operations/$entity",
    "@odata.type": "#microsoft.graph.ediscovery.estimateStatisticsOperation",
    "createdDateTime": "2021-01-12T18:47:23.3974907Z",
    "completedDateTime": "2021-01-12T18:47:51.1461805Z",
    "percentProgress": 100,
    "status": "succeeded",
    "action": "estimateStatistics",
    "id": "82edd40e182a464fa02c24a36fa94873",
    "indexedItemCount": 2,
    "indexedItemsSize": 39276,
    "unindexedItemCount": 0,
    "unindexedItemsSize": 0,
    "mailboxCount": 1,
    "siteCount": 0,
    "createdBy": {
        "user": {
            "id": "c1db6f13-332a-4d84-b111-914383ff9fc9",
            "displayName": null,
            "userPrincipalName": "admin@contoso.com"
        }
    }
}
```
