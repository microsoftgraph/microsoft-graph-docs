---
title: "Update userExperienceAnalyticsWorkFromAnywhereDevice"
description: "Update the properties of a userExperienceAnalyticsWorkFromAnywhereDevice object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsWorkFromAnywhereDevice

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsWorkFromAnywhereMetrics/{userExperienceAnalyticsWorkFromAnywhereMetricId}/metricDevices/{userExperienceAnalyticsWorkFromAnywhereDeviceId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics work from anywhere device.|
|deviceName|String|The work from anywhere device's name.|
|serialNumber|String|The user experience work from anywhere device's serial number.|
|manufacturer|String|The user experience work from anywhere device's manufacturer.|
|model|String|The user experience work from anywhere device's model.|
|ownership|String|The user experience work from anywhere device's ownership.|
|managedBy|String|The user experience work from anywhere management agent of the device.|
|autoPilotRegistered|Boolean|The user experience work from anywhere intune device's autopilotRegistered.|
|autoPilotProfileAssigned|Boolean|The user experience analytics work from anywhere intune device's autopilotProfileAssigned.|
|azureAdRegistered|Boolean|The user experience work from anywhere device's azureAdRegistered.|
|azureAdDeviceId|String|The user experience work from anywhere azure Ad device Id.|
|azureAdJoinType|String|The user experience work from anywhere device's azure Ad joinType.|
|osDescription|String|The user experience work from anywhere device's OS Description.|
|osVersion|String|The user experience work from anywhere device's OS Version.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsWorkFromAnywhereMetrics/{userExperienceAnalyticsWorkFromAnywhereMetricId}/metricDevices/{userExperienceAnalyticsWorkFromAnywhereDeviceId}
Content-type: application/json
Content-length: 585

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevice",
  "deviceName": "Device Name value",
  "serialNumber": "Serial Number value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "ownership": "Ownership value",
  "managedBy": "Managed By value",
  "autoPilotRegistered": true,
  "autoPilotProfileAssigned": true,
  "azureAdRegistered": true,
  "azureAdDeviceId": "Azure Ad Device Id value",
  "azureAdJoinType": "Azure Ad Join Type value",
  "osDescription": "Os Description value",
  "osVersion": "Os Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 634

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevice",
  "id": "83d5adfc-adfc-83d5-fcad-d583fcadd583",
  "deviceName": "Device Name value",
  "serialNumber": "Serial Number value",
  "manufacturer": "Manufacturer value",
  "model": "Model value",
  "ownership": "Ownership value",
  "managedBy": "Managed By value",
  "autoPilotRegistered": true,
  "autoPilotProfileAssigned": true,
  "azureAdRegistered": true,
  "azureAdDeviceId": "Azure Ad Device Id value",
  "azureAdJoinType": "Azure Ad Join Type value",
  "osDescription": "Os Description value",
  "osVersion": "Os Version value"
}
```




