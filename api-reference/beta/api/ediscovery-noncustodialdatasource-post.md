---
title: "Create noncustodialDataSource"
description: "Create a new noncustodialDataSource object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Create noncustodialDataSource

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) object.

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
POST /compliance/ediscovery/cases/{caseId}/noncustodialDataSources
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) object.

The following table shows the properties that are required when you create the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md).

|Property|Type|Description|
|:---|:---|:---|
|applyHoldToSource|Boolean|Indicates if hold is applied to non-custodial data source (such as mailbox or site).|
|datasource|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md)|Either a userSource or siteSource.  For userSource, use "dataSource" : { "@odata.type" : "microsoft.graph.ediscovery.userSource", "email" : "SMTP address"}.  For site source use "dataSource" : { "@odata.type" : "microsoft.graph.ediscovery.siteSource", "site@odata.bind" : "siteId" }, where siteId can be derived from the site URL, e.g. `https://contoso.sharepoint.com/sites/HumanResources`, the Microsoft Graph request would be `https://graph.microsoft.com/v1.0/sites/contoso.sharepoint.com:/sites/HumanResources`. The ID is the first GUID listed in the ID field.

## Response

If successful, this method returns a `201 Created` response code and a [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_noncustodialdatasource_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/5b840b94-f821-4c4a-8cad-3a90062bf51a/noncustodialDataSources
Content-Type: application/json
Content-length: 206

{
    "applyHoldToSource" : true,
    "dataSource" : {
        "@odata.type" : "microsoft.graph.ediscovery.userSource",
        "email" : "adelev@contoso.com"
    }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-noncustodialdatasource-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-noncustodialdatasource-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-noncustodialdatasource-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-noncustodialdatasource-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.noncustodialDataSource"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases('5b840b94-f821-4c4a-8cad-3a90062bf51a')/noncustodialDataSources/$entity",
    "status": "0",
    "lastModifiedDateTime": "2021-02-19T07:02:45.7732516Z",
    "releasedDateTime": "0001-01-01T00:00:00Z",
    "id": "39374346363831303741353341373443",
    "displayName": null,
    "createdDateTime": "2021-02-19T07:02:45.4863718Z",
    "applyHoldToSource": true
}
```
