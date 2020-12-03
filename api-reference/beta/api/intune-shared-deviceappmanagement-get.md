---
title: "Get deviceAppManagement"
description: "Read properties and relationships of the deviceAppManagement object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get deviceAppManagement

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.

## Prerequisites

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).  Note that the appropriate permission varies according to the workflow.

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
| Delegated (work or school account) | |
| &nbsp; &nbsp; **Apps**, **books**, **onboarding**, **Partner Integration**, or **Policy Set** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.ReadW.All |
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| |
| &nbsp; &nbsp; **Apps**, **books**, **onboarding**, **Partner Integration**, or **Policy Set** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.ReadW.All |
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceAppManagement
```

## Optional query parameters

This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers

|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object in the response body.

## Example

### Request

Here is an example of the request.

``` http
GET https://graph.microsoft.com/beta/deviceAppManagement
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 133

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceAppManagement",
    "id": "bbb801a3-01a3-bbb8-a301-b8bba301b8bb"
  }
}
```










