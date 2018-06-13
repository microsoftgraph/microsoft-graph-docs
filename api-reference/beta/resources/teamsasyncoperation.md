# teamsAsyncOperation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A Microsoft Teams async operation is an operation that transcends the lifetime of a single API request. These operations are long-running or too expensive to complete within the timeframe of their originating request.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|id|string |Unique operation id.|
|operationType|[teamsAsyncOperationType](teamsAsyncOperationType.md) |Denotes which type of teams-specific operation is being described.|
|createdDateTime|DateTimeOffset |Time when the operation was created.|
|status|[teamsAsyncOperationStatus](teamsasyncoperationstatus.md)| Operation status.|
|lastActionDateTime|DateTimeOffset |Time when the async operation was last updated.|
|attemptsCount|Int32|Number of times the operation was attempted before being marked successful or failed.|
|targetResourceId|string |Target resource id that will reflect the result of this async operation.|
|targetResourceLocation|string |Location of the target resource.|
|error|[operationError](operationerror.md)|Any error that causes the async operation to fail.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsasyncoperation"
}-->

```json
{
    "id": "86cfb3a3-4860-4a28-ad9f-ebe01d7523c8",
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
<!-- {
  "type": "#page.annotation",
  "description": "teams async operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
