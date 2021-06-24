---
author: swapnil1993
title: "List columnDefinitions in a list"
description: "List columns in a list."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# List columns in a list
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the collection of columns, represented as [columnDefinition][columnDefinition] resources, in a [list][list].

  

## Permissions

  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

  

## HTTP request

  
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /sites/{site-id}/lists/{list-id}/columns
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

If successful, this method returns a `200 OK` response code and a collection of [columnDefinition][] objects in the response body.

  

## Example

### Request


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get_columns_from_list" } -->
 

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}/columns
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-columns-from-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-columns-from-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-columns-from-list-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-columns-from-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.columnDefinition)"
}
-->  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "description": "",
      "displayName": "Title",
      "hidden": false,
      "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",
      "indexed": false,
      "name": "Title",
      "readOnly": false,
      "required": false,
      "text": {
        "allowMultipleLines": false,
        "appendChangesToExistingText": false,
        "linesForEditing": 0,
        "maxLength": 255
      }
    },
    {
      "description": "",
      "displayName": "Address",
      "id": "11dfef35-e2f7-4f17-82b0-6fba34445103",
      "indexed": false,
      "name": "Address",
      "readOnly": false,
      "required": false,
      "text": {
        "allowMultipleLines": false,
        "appendChangesToExistingText": false,
        "linesForEditing": 0,
        "maxLength": 255
      }
    }
  ]
}
```

  

[columnDefinition]: ../resources/columnDefinition.md
[list]: ../resources/list.md
 
