---
title: "List noncustodialDataSources"
description: "Get a list of the noncustodialDataSource objects and their properties."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# List noncustodialDataSources

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects and their properties.

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
GET /compliance/ediscovery/cases/{caseId}/noncustodialDataSources
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

If successful, this method returns a `200 OK` response code and a collection of [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_noncustodialdatasource"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/5b840b94-f821-4c4a-8cad-3a90062bf51a/noncustodialDataSources
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-noncustodialdatasource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-noncustodialdatasource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-noncustodialdatasource-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-noncustodialdatasource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ediscovery.noncustodialDataSource)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases('5b840b94-f821-4c4a-8cad-3a90062bf51a')/noncustodialDataSources",
    "value": [
        {
            "status": "Active",
            "lastModifiedDateTime": "2021-02-17T19:41:28.9144454Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "8e402dd7f3c94a3abc086e5d07db1c6d",
            "displayName": null,
            "createdDateTime": "2021-02-17T19:41:22.9690997Z",
            "applyHoldToSource": true
        },
        {
            "status": "Active",
            "lastModifiedDateTime": "2021-02-17T19:41:28.8714643Z",
            "releasedDateTime": "0001-01-01T00:00:00Z",
            "id": "8b69818bf6af4f8a9dede428401c71e7",
            "displayName": null,
            "createdDateTime": "2021-02-17T19:41:22.958104Z",
            "applyHoldToSource": true
        }
    ]
}
```
