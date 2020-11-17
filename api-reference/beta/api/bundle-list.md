---
author: JeremyKelley
ms.author: jeremyke
title: List bundles
description: List the bundles in a user's drive
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List bundles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all the [bundles][bundle] in a user's drive.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application          | Not supported.                                           |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drive/bundles
```

## Optional query parameters

This method supports the [OData Query Parameters][] to filter and shape the response.

You can't use the `expand=children` query parameter when enumerating bundles.

## Request headers

| Name          | Description  |
|:------------- |:------------ |
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body with this method.

## Response

If successful, this request returns the list of bundle items defined for the drive.

Read the [Error Responses][error-response] topic for more info about how errors are returned.

## Examples

### Example 1: List all bundles in a drive

To request an enumeration of all bundles defined in the drive, you can make a request to the **bundles** collection without any parameters.

#### Request


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "list-all-bundles", "tags": "service.onedrive" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/drive/bundles
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-all-bundles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-all-bundles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-all-bundles-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-all-bundles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true, "isCollection": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0123456789abc",
      "name": "Vacation photo album",
      "bundle": {
        "childCount": 1,
        "album": { }
      }
    },
    {
      "id": "0120310201abd",
      "name": "Family shared files",
      "bundle": {
        "childCount": 1
      }
    }
  ],
  "@odata.nextLink": "https://..."
}
```

The response object shown here might be shortened for readability. All the properties will be returned from an actual call.


### Example 2: List all photo albums in a drive

To filter the list of bundles returned from a request to the bundles collection, you can use the `filter` query string parameter to specify the type of bundle to return by checking for the existence of a facet on the bundle:

#### Request


# [HTTP](#tab/http)
<!-- {"blockType": "request", "name": "list-album-bundles", "tags": "service.onedrive" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/drive/bundles?filter=bundle/album%20ne%20null
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-album-bundles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-album-bundles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-album-bundles-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-album-bundles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The response to a GET to the bundles endpoint is an array of [driveItem][] resources with the [bundle][].
Because all bundles are items, you can use use all the standard item operations on them.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true, "isCollection": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0123456789abc",
      "name": "Vacation photo album",
      "bundle": {
        "childCount": 1,
        "album": { }
      }
    },
    {
      "id": "120301010abcd",
      "name": "Seattle Center event",
      "bundle": {
        "childCount": 4,
        "album": { }
      },
      "tags": [
        {
          "name": "outside",
          "autoTagged": { }
        }
      ]
    }
  ]
}
```

The response object shown here might be shortened for readability. All the properties will be returned from an actual call.


[bundle]: ../resources/bundle.md
[driveItem]: ../resources/driveItem.md
[error-response]: /graph/errors
[OData Query Parameters]: /graph/query-parameters

<!-- {
  "type": "#page.annotation",
  "description": "List the bundles in a drive.",
  "keywords": "list,bundle,collection",
  "section": "documentation",
  "tocPath": "Bundles/List"
} -->


