---
title: "List updatableAssetGroup resources"
description: "Get a list of updatableAssetGroup objects and their properties."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# List updatableAssetGroup resources
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) objects and their properties.

This operation filters on the fully qualified resource type, `microsoft.graph.windowsUpdates.updatableAssetGroup`, which inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/updatableAssets/?$filter=isof('microsoft.graph.windowsUpdates.updatableAssetGroup')
```

## Optional query parameters
This method supports some of the [OData query parameters](/graph/query-parameters) to help customize the response, including `$count`, `$filter`, `$orderBy`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_updatableassetgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/?$filter=isof('microsoft.graph.windowsUpdates.updatableAssetGroup')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-updatableassetgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-updatableassetgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-updatableassetgroup-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-updatableassetgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.updatableAssetGroup)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
      "id": "5c55730b-730b-5c55-0b73-555c0b73555c"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
      "id": "deb43c16-77ff-465d-aa79-366a107a6c7a"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
      "id": "312643e6-b805-419f-bdf7-1a104dd6c8b9"
    }
  ]
}
```

