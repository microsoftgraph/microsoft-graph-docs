---
title: "Update user"
description: "Update the properties of a user object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update user

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [user](../resources/intune-onboarding-user.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /users/{usersId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [user](../resources/intune-onboarding-user.md) object.

The following table shows the properties that are required when you create the [user](../resources/intune-onboarding-user.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|



## Response
If successful, this method returns a `200 OK` response code and an updated [user](../resources/intune-onboarding-user.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/users/{usersId}
Content-type: application/json
Content-length: 77

{
  "@odata.type": "#microsoft.graph.user",
  "deviceEnrollmentLimit": 5
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 126

{
  "@odata.type": "#microsoft.graph.user",
  "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3",
  "deviceEnrollmentLimit": 5
}
```




