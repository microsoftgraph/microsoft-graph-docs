---
title: "Create androidManagedAppRegistration"
description: "Create a new androidManagedAppRegistration object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create androidManagedAppRegistration

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [androidManagedAppRegistration](../resources/intune-mam-androidmanagedappregistration.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/managedAppRegistrations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the androidManagedAppRegistration object.

The following table shows the properties that are required when you create the androidManagedAppRegistration.

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|flaggedReasons|[managedAppFlaggedReason](../resources/intune-mam-managedappflaggedreason.md) collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md). Possible values are: `none`, `rootedDevice`.|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|



## Response
If successful, this method returns a `201 Created` response code and a [androidManagedAppRegistration](../resources/intune-mam-androidmanagedappregistration.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/v1.0/deviceAppManagement/managedAppRegistrations
Content-type: application/json
Content-length: 645

{
  "@odata.type": "#microsoft.graph.androidManagedAppRegistration",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "applicationVersion": "Application Version value",
  "managementSdkVersion": "Management Sdk Version value",
  "platformVersion": "Platform Version value",
  "deviceType": "Device Type value",
  "deviceTag": "Device Tag value",
  "deviceName": "Device Name value",
  "flaggedReasons": [
    "rootedDevice"
  ],
  "userId": "User Id value",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.androidMobileAppIdentifier",
    "packageId": "Package Id value"
  },
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 753

{
  "@odata.type": "#microsoft.graph.androidManagedAppRegistration",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00",
  "applicationVersion": "Application Version value",
  "managementSdkVersion": "Management Sdk Version value",
  "platformVersion": "Platform Version value",
  "deviceType": "Device Type value",
  "deviceTag": "Device Tag value",
  "deviceName": "Device Name value",
  "flaggedReasons": [
    "rootedDevice"
  ],
  "userId": "User Id value",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.androidMobileAppIdentifier",
    "packageId": "Package Id value"
  },
  "id": "0e064997-4997-0e06-9749-060e9749060e",
  "version": "Version value"
}
```




