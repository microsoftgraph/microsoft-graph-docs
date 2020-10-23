---
title: "teamsAsyncOperation resource type"
description: "A Microsoft Teams async operation is an operation that transcends the lifetime of a single API request. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAsyncOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Microsoft Teams async operation is an operation that transcends the lifetime of a single API request. 
These operations are long-running or too expensive to complete within the timeframe of their originating request.

When an async operation is initiated, the method returns a 202 Accepted response code. 
The response will also contain a Location header, which contains the location of the teamsAsyncOperation. 
Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks.
When the request completes successfully, the status will be "succeeded" and the targetResourceLocation will point to the created/modified resource.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|id|string |Unique operation id.|
|operationType|[teamsAsyncOperationType](teamsasyncoperationtype.md) |Denotes which type of operation is being described.|
|createdDateTime|DateTimeOffset |Time when the operation was created.|
|status|[teamsAsyncOperationStatus](teamsasyncoperationstatus.md)| Operation status.|
|lastActionDateTime|DateTimeOffset |Time when the async operation was last updated.|
|attemptsCount|Int32|Number of times the operation was attempted before being marked successful or failed.|
|targetResourceId|guid |The ID of the object that's created or modified as result of this async operation, typically a [team](../resources/team.md).|
|targetResourceLocation|string|The location of the object that's created or modified as result of this async operation. This URL should be treated as an opaque value and not parsed into its component paths.|
|error|[operationError](operationerror.md)|Any error that causes the async operation to fail.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAsyncOperation"
}-->

```json
{
    "id": "string",
    "operationType": "archiveTeam",
    "createdDateTime": "2018-01-01T00:00:00.0000000Z",
    "status": "succeeded",
    "lastActionDateTime": "2018-01-01T00:00:00.0000000Z",
    "attemptsCount": 1,
    "targetResourceId": "fa4aa5a2-a75b-4769-86f4-9e2742a18fda",
    "targetResourceLocation": "/groups('fa4aa5a2-a75b-4769-86f4-9e2742a18fda')/team",
    "error": null
}
```

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teams async operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


