---
title: "Update windowsManagementAppHealthSummary"
description: "Update the properties of a windowsManagementAppHealthSummary object."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
---

# Update windowsManagementAppHealthSummary

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsManagementAppHealthSummary](../resources/intune-devices-windowsmanagementapphealthsummary.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/windowsManagementApp/healthSummary
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsManagementAppHealthSummary](../resources/intune-devices-windowsmanagementapphealthsummary.md) object.

The following table shows the properties that are required when you create the [windowsManagementAppHealthSummary](../resources/intune-devices-windowsmanagementapphealthsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the Windows management app health summary entity.|
|healthyDeviceCount|Int32|Healthy device count.|
|unhealthyDeviceCount|Int32|Unhealthy device count.|
|unknownDeviceCount|Int32|Unknown device count.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsManagementAppHealthSummary](../resources/intune-devices-windowsmanagementapphealthsummary.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/windowsManagementApp/healthSummary
Content-type: application/json
Content-length: 161

{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthSummary",
  "healthyDeviceCount": 2,
  "unhealthyDeviceCount": 4,
  "unknownDeviceCount": 2
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 210

{
  "@odata.type": "#microsoft.graph.windowsManagementAppHealthSummary",
  "id": "a9d38a9e-8a9e-a9d3-9e8a-d3a99e8ad3a9",
  "healthyDeviceCount": 2,
  "unhealthyDeviceCount": 4,
  "unknownDeviceCount": 2
}
```





