---
title: "updatableAssetGroup: addMembersById"
description: "Add members of the same type to an updatableAssetGroup."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAssetGroup: addMembersById
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add members of the same type to an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).

You can also use the method [addMembers](windowsupdates-updatableassetgroup-addmembers.md) to add members.

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
POST /admin/windows/updates/updatableAssets/{updatableAssetGroupId}/addMembersById
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
|ids|String collection|List of identifiers corresponding to the [updatableAsset](../resources/windowsupdates-updatableasset.md) resources to add as members of the **updatableAssetGroup**.|
|memberEntityType|String|The full type of the **updatableAsset** resources. Possible values are: `#microsoft.graph.windowsUpdates.azureADDevice`.|

## Response

If successful, this action returns a `202 Accepted` response code. It does not return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "updatableassetgroup_addmembersbyid"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/{updatableAssetGroupId}/addMembersById
Content-Type: application/json

{
  "ids": [
    "String",
    "String",
    "String"
  ],
  "memberEntityType": "#microsoft.graph.windowsUpdates.azureADDevice"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/updatableassetgroup-addmembersbyid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/updatableassetgroup-addmembersbyid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/updatableassetgroup-addmembersbyid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/updatableassetgroup-addmembersbyid-java-snippets.md)]
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

