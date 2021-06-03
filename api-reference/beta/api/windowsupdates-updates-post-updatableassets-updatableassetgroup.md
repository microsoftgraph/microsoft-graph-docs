---
title: "Create updatableAssetGroup"
description: "Create a new updatableAssetGroup object."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# Create updatableAssetGroup
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.

The **updatableAssetGroup** resource inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

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
POST /admin/windows/updates/updatableAssets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.

No properties are required.


## Response

If successful, this method returns a `201 Created` response code and an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_updatableassetgroup_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets
Content-Type: application/json
Content-length: 76

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-updatableassetgroup-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-updatableassetgroup-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-updatableassetgroup-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-updatableassetgroup-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAssetGroup"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
  "id": "5c55730b-730b-5c55-0b73-555c0b73555c"
}
```

