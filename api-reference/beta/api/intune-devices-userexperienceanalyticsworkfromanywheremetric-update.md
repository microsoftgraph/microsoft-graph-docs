---
title: "Update userExperienceAnalyticsWorkFromAnywhereMetric"
description: "Update the properties of a userExperienceAnalyticsWorkFromAnywhereMetric object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsWorkFromAnywhereMetric

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsWorkFromAnywhereMetrics/{userExperienceAnalyticsWorkFromAnywhereMetricId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics work from anywhere metric.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsWorkFromAnywhereMetrics/{userExperienceAnalyticsWorkFromAnywhereMetricId}
Content-type: application/json
Content-length: 87

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereMetric"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 136

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereMetric",
  "id": "7e6fda96-da96-7e6f-96da-6f7e96da6f7e"
}
```




