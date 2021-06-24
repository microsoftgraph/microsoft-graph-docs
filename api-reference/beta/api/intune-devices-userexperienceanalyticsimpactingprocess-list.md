---
title: "List userExperienceAnalyticsImpactingProcesses"
description: "List properties and relationships of the userExperienceAnalyticsImpactingProcess objects."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List userExperienceAnalyticsImpactingProcesses

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsImpactingProcess](../resources/intune-devices-userexperienceanalyticsimpactingprocess.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/userExperienceAnalyticsImpactingProcess
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsImpactingProcess](../resources/intune-devices-userexperienceanalyticsimpactingprocess.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsImpactingProcess
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 414

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userExperienceAnalyticsImpactingProcess",
      "id": "faefd665-d665-faef-65d6-effa65d6effa",
      "deviceId": "Device Id value",
      "category": "Category value",
      "processName": "Process Name value",
      "description": "Description value",
      "publisher": "Publisher value",
      "impactValue": 3.6666666666666665
    }
  ]
}
```




