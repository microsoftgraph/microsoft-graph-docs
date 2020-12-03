---
author: JeremyKelley
ms.author: jeremyke
title: Update a bundle
description: Update a bundle of driveItems
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Update bundle

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the metadata for a [bundle][] of [driveItems][driveItem] by ID.
You can only update the following metadata:

* Bundle name
* Album `coverImageItemId` (if applicable)

Any other change requests will be ignored.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All   |
|Application          | Not supported.                                           |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /drive/items/{bundle-id}
```

## Request headers

| Name          | Description  |
|:------------- |:------------ |
| Authorization | Bearer \{token\}. Required. |
| if-match      | eTag. Optional. If this request header is included and the eTag provided does not match the current eTag on the buncle, a `412 Precondition Failed` response is returned.

## Request body

In the request body, supply the values for relevant fields that should be
updated. Existing properties that are not included in the request body
will maintain their previous values or be recalculated based on changes to other
property values. For best performance, don't include existing values that haven't changed.

## Response

If successful, this method returns a [driveItem][] resource that represents the updated bundle in the response body.

Read the [Error Responses][error-response] topic for more info about how errors are returned.

## Example

This example renames a bundle.

### Request


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "rename-bundle" } -->

```json
PATCH https://graph.microsoft.com/beta/drive/items/{bundle-id}
Content-Type: application/json

{
  "name": "Shared legal agreements"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/rename-bundle-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/rename-bundle-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/rename-bundle-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/rename-bundle-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "0123456789abc",
  "name": "Shared legal agreements",
  "bundle": {
    "childCount": 3
  }
}
```

The response object shown here might be shortened for readability. All the properties will be returned from an actual call.


[bundle]: ../resources/bundle.md
[driveItem]: ../resources/driveItem.md
[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Update or replace the contents or properties of a bundle.",
  "keywords": "update,replace,contents,bundle",
  "section": "documentation",
	"tocPath": "Bundles/Update"
} -->


