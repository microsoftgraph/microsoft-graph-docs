---
title: "deploymentAudience: updateAudienceById"
description: "Update the members and exclusions collections of a deploymentAudience with updatableAsset resources of the same type."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# deploymentAudience: updateAudienceById
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the members and exclusions collections of a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) with [updatableAsset](../resources/windowsupdates-updatableasset.md) resources of the same type.

Adding an [azureADDevice](../resources/windowsupdates-azureaddevice.md) to the members or exclusions collections of a deployment audience automatically creates an Azure AD device object if it does not already exist.

If the same [updatableAsset](../resources/windowsupdates-updatableasset.md) gets included in the **exclusions** and **members** collections of a **deploymentAudience**, deployment will not apply to that asset.

You can also use the method [updateAudience](windowsupdates-deploymentaudience-updateaudience.md) to update the **deploymentAudience**.

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
POST /admin/windows/updates/deployments/{deploymentId}/audience/updateAudienceById
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
|memberEntityType|String|The full type of the updatable assets. Possible values are: `#microsoft.graph.windowsUpdates.azureADDevice`, `#microsoft.graph.windowsUpdates.updatableAssetGroup`.|
|addMembers|String collection|List of identifiers corresponding to the updatable assets to add as members of the deployment audience.|
|removeMembers|String collection|List of identifiers corresponding to the updatable assets to remove as members of the deployment audience.|
|addExclusions|String collection|List of identifiers corresponding to the updatable assets to add as exclusions from the deployment audience.|
|removeExclusions|String collection|List of identifiers corresponding to the updatable assets to remove as exclusions from the deployment audience.|



## Response

If successful, this action returns a `202 Accepted` response code. It does not return anything in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "deploymentaudience_updateaudiencebyid"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments/{deploymentId}/audience/updateAudienceById
Content-Type: application/json
Content-length: 204

{
  "memberEntityType": "String",
  "addMembers": [
    "String"
  ],
  "removeMembers": [
    "String"
  ],
  "addExclusions": [
    "String"
  ],
  "removeExclusions": [
    "String"
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/deploymentaudience-updateaudiencebyid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/deploymentaudience-updateaudiencebyid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/deploymentaudience-updateaudiencebyid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/deploymentaudience-updateaudiencebyid-java-snippets.md)]
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

