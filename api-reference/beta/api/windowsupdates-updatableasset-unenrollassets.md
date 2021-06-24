---
title: "updatableAsset: unenrollAssets"
description: "Unenroll updatableAsset resources from update management by the deployment service."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: apiPageType
---

# updatableAsset: unenrollAssets
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unenroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources from update management by the deployment service.

You can also use the method [unenrollAssetsById](windowsupdates-updatableasset-unenrollassetsbyid.md) to unenroll assets.

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
POST /updatableAssetGroup/members/unenrollAssets
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
|assets|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of **updatableAsset** resources to unenroll from update management by the service for the given **updateCategory**.|



## Response

If successful, this action returns a `202 Accepted` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "updatableasset_unenrollassets"
}
-->
``` http
POST https://graph.microsoft.com/beta/updatableAssetGroup/members/unenrollAssets
Content-Type: application/json

{
  "updateCategory": "String",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    }
  ]
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

