---
title: "List relations"
description: "Get the relations from the relations navigation property."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: apiPageType
---

# List relations
Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the different relation of a [term] or [set] from the relations navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account) |TermStore.Read.All, TermStore.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /termStore/sets/{setId}/relations
GET /termStore/sets/{setId}/terms/{termId}/relations
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

If successful, this method returns a `200 OK` response code and a collection of [relation](../resources/termstore-relation.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_relation"
}-->

``` http
GET https://graph.microsoft.com/beta/termStore/sets/{setId}/relations
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-relation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-relation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-relation-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-relation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "collection(microsoft.graph.termStore.relation)"
}-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "052c749c-749c-052c-9c74-2c059c742c05",
      "relationship": "pin"
    }
  ]
}
```


[set]: ../resources/termstore-set.md
[term]: ../resources/termstore-term.md
[microsoft.graph.termStore.relation]: ../resources/termstore-relation.md


<!--
{
  "type": "#page.annotation",
  "description": "Create a pinned term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/term list relations",
  "suppressions": [
  ]
}
-->


