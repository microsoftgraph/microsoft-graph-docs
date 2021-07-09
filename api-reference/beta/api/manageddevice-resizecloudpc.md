---
title: "managedDevice: resizeCloudPc"
description: "Upgrade or downgrade an existing cloud PC to another configuration with a new virtual CPU (vCPU) and storage size."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: resizeCloudPc

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upgrade or downgrade an existing cloud PC to another configuration with a new virtual CPU (vCPU) and storage size.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/managedDevices/{managedDeviceId}/resizeCloudPc
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "managedDevice_resizeCloudPc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/{managedDeviceId}/resizeCloudPc
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```