---
title: "List estimateStatisticsOperation"
description: "Get the last estimateStatisticsOperation object associated with a source collection."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# List estimateStatisticsOperation

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the last [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object associated with a source collection. 

>**Note:** This method only lists the last operation; it does not return a history of all operations.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/lastEstimateStatisticsOperation
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.ediscovery.estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_estimatestatisticsoperation"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/95bdbf84f02f4bdaafbbb2fe945a4962/lastEstimateStatisticsOperation
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-estimatestatisticsoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-estimatestatisticsoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-estimatestatisticsoperation-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-estimatestatisticsoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ediscovery.estimateStatisticsOperation)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "createdDateTime": "2021-01-12T20:12:01.4443402Z",
        "completedDateTime": "2021-01-12T20:12:35.4818899Z",
        "percentProgress": 100,
        "status": "succeeded",
        "action": "estimateStatistics",
        "id": "95bdbf84f02f4bdaafbbb2fe945a4962",
        "indexedItemCount": 3,
        "indexedItemsSize": 68848,
        "unindexedItemCount": 0,
        "unindexedItemsSize": 0,
        "mailboxCount": 2,
        "siteCount": 0
    }
  ]
}
```
