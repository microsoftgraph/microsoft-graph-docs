---
title: "Create user"
description: "Create a new user object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create user

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [user](../resources/intune-shared-user.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).  The specific permission required depends on the context.

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| _varies by context_ |
| &nbsp; &nbsp; Device management | DeviceManagementManagedDevices.ReadWrite.All |
| &nbsp; &nbsp; MAM | DeviceManagementApps.ReadWrite.All |
| &nbsp; &nbsp; Onboarding | DeviceManagementServiceConfig.ReadWrite.All |
| &nbsp; &nbsp; Troubleshooting | DeviceManagementManagedDevices.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the user object.

The following table shows the properties that are required when you create the user.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|**Onboarding**|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|

Request body property support varies according to context.

## Response
If successful, this method returns a `201 Created` response code and a [user](../resources/intune-shared-user.md) object in the response body.

## Example

### Request
Here is an example of the request.

``` http
POST https://graph.microsoft.com/v1.0/users
Content-type: application/json
Content-length: 46

{
  "@odata.type": "#microsoft.graph.user"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. Properties returned from an actual call vary according to context.

``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 95

{
  "@odata.type": "#microsoft.graph.user",
  "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3"
}
```









