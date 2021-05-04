---
title: "Update userExperienceAnalyticsAppHealthDevicePerformanceDetails"
description: "Update the properties of a userExperienceAnalyticsAppHealthDevicePerformanceDetails object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsAppHealthDevicePerformanceDetails

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/userExperienceAnalyticsAppHealthDevicePerformanceDetails/{userExperienceAnalyticsAppHealthDevicePerformanceDetailsId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device performance object.|
|eventDateTime|DateTimeOffset|The time the event occurred.|
|eventType|String|The type of the event.|
|appDisplayName|String|The friendly name of the application for which the event occurred.|
|deviceId|String|The id of the device.|
|deviceDisplayName|String|The name of the device.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsAppHealthDevicePerformanceDetails](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformancedetails.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAppHealthDevicePerformanceDetails/{userExperienceAnalyticsAppHealthDevicePerformanceDetailsId}
Content-type: application/json
Content-length: 325

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformanceDetails",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "eventType": "Event Type value",
  "appDisplayName": "App Display Name value",
  "deviceId": "Device Id value",
  "deviceDisplayName": "Device Display Name value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 374

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformanceDetails",
  "id": "bc8c5273-5273-bc8c-7352-8cbc73528cbc",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "eventType": "Event Type value",
  "appDisplayName": "App Display Name value",
  "deviceId": "Device Id value",
  "deviceDisplayName": "Device Display Name value"
}
```




