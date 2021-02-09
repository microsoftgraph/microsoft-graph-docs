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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [user](../resources/intune-shared-user.md) object.

## Prerequisites

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All|
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All|
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All|
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All|
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All|

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

In the request body, supply a JSON representation for the [user](../resources/intune-shared-user.md) object.

The following table shows the properties that are required when you create the [user](../resources/intune-shared-user.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|**Onboarding**|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|

## Response

If successful, this method returns a `200 OK` response code and an updated [user](../resources/intune-shared-user.md) object in the response body.

## Example

### Request

Here is an example of the request.

``` http
PATCH https://graph.microsoft.com/beta/users/{usersId}
Content-type: application/json
Content-length: 2

{}
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 95

{
  "@odata.type": "#microsoft.graph.user",
  "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3"
}
```










