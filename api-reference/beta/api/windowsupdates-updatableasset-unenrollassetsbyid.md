---
title: "updatableAsset: unenrollAssetsById"
description: "Unenroll updatableAsset resources of the same type from update management by the deployment service."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAsset: unenrollAssetsById
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unenroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources of the same type from update management by the deployment service.

You can also use the method [unenrollAssets](windowsupdates-updatableasset-unenrollassets.md) to unenroll assets.

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
POST /admin/windows/updates/updatableAssets/unenrollAssetsById
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|updateCategory|microsoft.graph.windowsUpdates.updateCategory|The category of updates for the service to stop managing. Supports a subset of the values for **updateCategory**. Possible values are: `feature`.|
|memberEntityType|String|The full type of the **updatableAsset** resources. Possible values are: `#microsoft.graph.windowsUpdates.azureADDevice`.|
|ids|String collection|List of identifiers corresponding to the **updatableAsset** resources to unenroll from update management by the service for the given **updateCategory**.|

## Response

If successful, this action returns a `202 Accepted` response code. It does not return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "updatableasset_unenrollassetsbyid"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/unenrollAssetsById
Content-Type: application/json

{
  "updateCategory": "feature",
  "memberEntityType": "#microsoft.graph.windowsUpdates.azureADDevice",
  "ids": [
    "String",
    "String",
    "String"
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/updatableasset-unenrollassetsbyid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/updatableasset-unenrollassetsbyid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/updatableasset-unenrollassetsbyid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/updatableasset-unenrollassetsbyid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

