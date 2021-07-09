---
title: "managedDevice: bulkReprovisionCloudPc"
description: "Bulk reprovision a set of Cloud PC devices with Intune managed device IDs."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# managedDevice: bulkReprovisionCloudPc

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Bulk reprovision a set of cloud PC devices with Intune [managed device](../resources/cloudpc.md) IDs.

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
POST /deviceManagement/managedDevices/bulkReprovisionCloudPc
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the IDs of the Intune managed devices.

The following table shows the properties that are required when you bulk reprovision a set of cloud pc devices.

|Property|Type|Description|
|:---|:---|:---|
|managedDeviceIds|Collection(String)|The IDs of the cloud PC devices.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "managedDevice_bulkReprovisionCloudPc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/bulkReprovisionCloudPc
Content-Type: application/json

{
  managedDeviceIds: ["30d0e128-de93-41dc-89ec-33d84bb662a0", "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"] 
}
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