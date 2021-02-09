---
title: "Create assignmentFilterEvaluationStatusDetails"
description: "Create a new assignmentFilterEvaluationStatusDetails object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create assignmentFilterEvaluationStatusDetails

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /deviceManagement/managedDevices/{managedDeviceId}/assignmentFilterEvaluationStatusDetails
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the assignmentFilterEvaluationStatusDetails object.

The following table shows the properties that are required when you create the assignmentFilterEvaluationStatusDetails.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the AssignmentFilterEvaluationStatusDetails entity.|
|payloadId|String|PayloadId on which filter has been applied.|



## Response
If successful, this method returns a `201 Created` response code and a [assignmentFilterEvaluationStatusDetails](../resources/intune-policyset-assignmentfilterevaluationstatusdetails.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDevices/{managedDeviceId}/assignmentFilterEvaluationStatusDetails
Content-type: application/json
Content-length: 117

{
  "@odata.type": "#microsoft.graph.assignmentFilterEvaluationStatusDetails",
  "payloadId": "Payload Id value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 166

{
  "@odata.type": "#microsoft.graph.assignmentFilterEvaluationStatusDetails",
  "id": "820ef068-f068-820e-68f0-0e8268f00e82",
  "payloadId": "Payload Id value"
}
```




