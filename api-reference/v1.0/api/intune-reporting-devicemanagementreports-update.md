---
title: "Update deviceManagementReports"
description: "Update the properties of a deviceManagementReports object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagementReports

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/reports
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md) object.

The following table shows the properties that are required when you create the [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagementReports](../resources/intune-reporting-devicemanagementreports.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement/reports
Content-type: application/json
Content-length: 65

{
  "@odata.type": "#microsoft.graph.deviceManagementReports"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 114

{
  "@odata.type": "#microsoft.graph.deviceManagementReports",
  "id": "d6a697d3-97d3-d6a6-d397-a6d6d397a6d6"
}
```




