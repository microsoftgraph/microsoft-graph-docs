---
title: "Update reportRoot"
description: "Update the properties of a reportRoot object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update reportRoot

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [reportRoot](../resources/intune-deviceconfig-reportroot.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /reports
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [reportRoot](../resources/intune-deviceconfig-reportroot.md) object.

The following table shows the properties that are required when you create the [reportRoot](../resources/intune-deviceconfig-reportroot.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [reportRoot](../resources/intune-deviceconfig-reportroot.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/reports
Content-type: application/json
Content-length: 52

{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 101

{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "9ab6b3dd-b3dd-9ab6-ddb3-b69addb3b69a"
}
```




