---
title: "Update sourceCollection"
description: "Update the properties of a sourceCollection object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Update sourceCollection

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sourceCollection](../resources/ediscovery-sourcecollection.md) object.

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
PATCH /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|The query string in KQL (Keyword Query Language) query. For details, see [Keyword queries and search conditions for Content Search and eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions).  You can refine searches by using fields paired with values; for example, `subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016`.|
|dataSourceScopes|microsoft.graph.ediscovery.dataSourceScopes|When specified, the collection will span across a service for an entire workload. Possible values are: `none`,`allTenantMailboxes`,`allTenantSites`,`allCaseCustodians`,`allCaseNoncustodialDataSources`. **Note:** Either one custodian or specifying dataSourceScope is required when creating a source collection.|
|description|String|The description of the **sourceCollection**.|
|displayName|String|The display name of the **sourceCollection**.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_sourcecollection"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/1a9b4145d8f84e39bc45a7f68c5c5119
Content-Type: application/json
Content-length: 247

{
    "displayName": "Quarterly Financials search",
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-sourcecollection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-sourcecollection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-sourcecollection-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-sourcecollection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
