---
title: "Create userExperienceAnalyticsDevicePerformance"
description: "Create a new userExperienceAnalyticsDevicePerformance object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create userExperienceAnalyticsDevicePerformance

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) object.

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
POST /deviceManagement/userExperienceAnalyticsDevicePerformance
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the userExperienceAnalyticsDevicePerformance object.

The following table shows the properties that are required when you create the userExperienceAnalyticsDevicePerformance.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device boot performance device.|
|deviceName|String|The user experience analytics device name.|
|model|String|The user experience analytics device model.|
|manufacturer|String|The user experience analytics device manufacturer.|
|diskType|[diskType](../resources/intune-devices-disktype.md)|The user experience analytics device disk type. Possible values are: `unkown`, `hdd`, `ssd`.|
|operatingSystemVersion|String|The user experience analytics device Operating System version.|
|bootScore|Int32|The user experience analytics device boot score.|
|coreBootTimeInMs|Int32|The user experience analytics device core boot time in milliseconds.|
|groupPolicyBootTimeInMs|Int32|The user experience analytics device group policy boot time in milliseconds.|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics device. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|loginScore|Int32|The user experience analytics device login score.|
|coreLoginTimeInMs|Int32|The user experience analytics device core login time in milliseconds.|
|groupPolicyLoginTimeInMs|Int32|The user experience analytics device group policy login time in milliseconds.|
|deviceCount|Int64|User experience analytics summarized device count.|
|responsiveDesktopTimeInMs|Int32|The user experience analytics responsive desktop time in milliseconds.|
|blueScreenCount|Int32|Number of Blue Screens in the last 14 days. Valid values 0 to 9999999|
|restartCount|Int32|Number of Restarts in the last 14 days. Valid values 0 to 9999999|
|averageBlueScreens|Double|Average (mean) number of Blue Screens per device in the last 14 days. Valid values 0 to 9999999|
|averageRestarts|Double|Average (mean) number of Restarts per device in the last 14 days. Valid values 0 to 9999999|



## Response
If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsDevicePerformance](../resources/intune-devices-userexperienceanalyticsdeviceperformance.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsDevicePerformance
Content-type: application/json
Content-length: 635

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDevicePerformance",
  "deviceName": "Device Name value",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "diskType": "hdd",
  "operatingSystemVersion": "Operating System Version value",
  "bootScore": 9,
  "coreBootTimeInMs": 0,
  "groupPolicyBootTimeInMs": 7,
  "healthStatus": "insufficientData",
  "loginScore": 10,
  "coreLoginTimeInMs": 1,
  "groupPolicyLoginTimeInMs": 8,
  "deviceCount": 11,
  "responsiveDesktopTimeInMs": 9,
  "blueScreenCount": 15,
  "restartCount": 12,
  "averageBlueScreens": 6.0,
  "averageRestarts": 5.0
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 684

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDevicePerformance",
  "id": "852ae826-e826-852a-26e8-2a8526e82a85",
  "deviceName": "Device Name value",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "diskType": "hdd",
  "operatingSystemVersion": "Operating System Version value",
  "bootScore": 9,
  "coreBootTimeInMs": 0,
  "groupPolicyBootTimeInMs": 7,
  "healthStatus": "insufficientData",
  "loginScore": 10,
  "coreLoginTimeInMs": 1,
  "groupPolicyLoginTimeInMs": 8,
  "deviceCount": 11,
  "responsiveDesktopTimeInMs": 9,
  "blueScreenCount": 15,
  "restartCount": 12,
  "averageBlueScreens": 6.0,
  "averageRestarts": 5.0
}
```




