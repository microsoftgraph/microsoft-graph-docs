---
title: "Update officeConfiguration"
description: "Update the properties of a officeConfiguration object."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
---

# Update officeConfiguration

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /officeConfiguration
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md) object.

The following table shows the properties that are required when you create the [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|tenantCheckinStatuses|[officeClientCheckinStatus](../resources/intune-cirrus-officeclientcheckinstatus.md) collection|Not yet documented|
|tenantUserCheckinSummary|[officeUserCheckinSummary](../resources/intune-cirrus-officeusercheckinsummary.md)|Not yet documented|



## Response
If successful, this method returns a `200 OK` response code and an updated [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/officeConfiguration
Content-type: application/json
Content-length: 843

{
  "@odata.type": "#microsoft.graph.officeConfiguration",
  "tenantCheckinStatuses": [
    {
      "@odata.type": "microsoft.graph.officeClientCheckinStatus",
      "userId": "User Id value",
      "userPrincipalName": "User Principal Name value",
      "deviceName": "Device Name value",
      "devicePlatform": "Device Platform value",
      "devicePlatformVersion": "Device Platform Version value",
      "wasSuccessful": true,
      "checkinDateTime": "2016-12-31T23:56:33.9571764-08:00",
      "errorMessage": "Error Message value",
      "appliedPolicies": [
        "Applied Policies value"
      ],
      "lastTaskName": "Last Task Name value"
    }
  ],
  "tenantUserCheckinSummary": {
    "@odata.type": "microsoft.graph.officeUserCheckinSummary",
    "succeededUserCount": 2,
    "failedUserCount": 15
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 892

{
  "@odata.type": "#microsoft.graph.officeConfiguration",
  "id": "4b5f7085-7085-4b5f-8570-5f4b85705f4b",
  "tenantCheckinStatuses": [
    {
      "@odata.type": "microsoft.graph.officeClientCheckinStatus",
      "userId": "User Id value",
      "userPrincipalName": "User Principal Name value",
      "deviceName": "Device Name value",
      "devicePlatform": "Device Platform value",
      "devicePlatformVersion": "Device Platform Version value",
      "wasSuccessful": true,
      "checkinDateTime": "2016-12-31T23:56:33.9571764-08:00",
      "errorMessage": "Error Message value",
      "appliedPolicies": [
        "Applied Policies value"
      ],
      "lastTaskName": "Last Task Name value"
    }
  ],
  "tenantUserCheckinSummary": {
    "@odata.type": "microsoft.graph.officeUserCheckinSummary",
    "succeededUserCount": 2,
    "failedUserCount": 15
  }
}
```





