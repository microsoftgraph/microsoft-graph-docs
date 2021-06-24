---
title: "Update windowsManagementApp"
description: "Update the properties of a windowsManagementApp object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsManagementApp

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md) object.

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
PATCH /deviceAppManagement/windowsManagementApp
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md) object.

The following table shows the properties that are required when you create the [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the Windows management app|
|availableVersion|String|Windows management app available version.|
|managedInstaller|[managedInstallerStatus](../resources/intune-devices-managedinstallerstatus.md)|Managed Installer Status. Possible values are: `disabled`, `enabled`.|
|managedInstallerConfiguredDateTime|String|Managed Installer Configured Date Time|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/windowsManagementApp
Content-type: application/json
Content-length: 235

{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "availableVersion": "Available Version value",
  "managedInstaller": "enabled",
  "managedInstallerConfiguredDateTime": "Managed Installer Configured Date Time value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 284

{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "id": "5facc79c-c79c-5fac-9cc7-ac5f9cc7ac5f",
  "availableVersion": "Available Version value",
  "managedInstaller": "enabled",
  "managedInstallerConfiguredDateTime": "Managed Installer Configured Date Time value"
}
```




