---
title: "deviceConfigurationDeviceActivity function"
description: "Metadata for the device configuration device activity report"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# deviceConfigurationDeviceActivity function

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Metadata for the device configuration device activity report

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/deviceConfigurationDeviceActivity
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a [report](../resources/intune-deviceconfig-report.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/v1.0/reports/deviceConfigurationDeviceActivity
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 136

{
  "value": {
    "@odata.type": "microsoft.graph.report",
    "content": "Y29udGVudCBJbnR1bmUgRG9jIFNhbXBsZSAxNTYxOTcwNjY1"
  }
}
```




