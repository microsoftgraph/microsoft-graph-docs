---
title: "Get assignmentFilterEvaluationStatusDetails"
description: "Read properties and relationships of the assignmentFilterEvaluationStatusDetails object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get assignmentFilterEvaluationStatusDetails

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/managedDevices/{managedDeviceId}/assignmentFilterEvaluationStatusDetails/{assignmentFilterEvaluationStatusDetailsId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/managedDevices/{managedDeviceId}/assignmentFilterEvaluationStatusDetails/{assignmentFilterEvaluationStatusDetailsId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 191

{
  "value": {
    "@odata.type": "#microsoft.graph.assignmentFilterEvaluationStatusDetails",
    "id": "820ef068-f068-820e-68f0-0e8268f00e82",
    "payloadId": "Payload Id value"
  }
}
```




