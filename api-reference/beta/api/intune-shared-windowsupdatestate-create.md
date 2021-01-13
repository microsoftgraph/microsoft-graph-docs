---
title: "Create windowsUpdateState"
description: "Create a new windowsUpdateState object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create windowsUpdateState

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Device configuration** | DeviceManagementConfiguration.ReadWrite.All|
| &nbsp; &nbsp; **Software Update** | DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Device configuration** | DeviceManagementConfiguration.ReadWrite.All|
| &nbsp; &nbsp; **Software Update** | DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsUpdateForBusinessConfiguration/deviceUpdateStates
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windowsUpdateState object.

The following table shows the properties that are required when you create the windowsUpdateState.

|Property|Type|Description|
|:---|:---|:---|
|id|String|This is Id of the entity.|
|deviceId|String|The id of the device.|
|userId|String|The id of the user.|
|deviceDisplayName|String|Device display name.|
|userPrincipalName|String|User principal name.|
|status|[windowsUpdateStatus](../resources/intune-deviceconfig-windowsupdatestatus.md)|Windows udpate status. Possible values are: `upToDate`, `pendingInstallation`, `pendingReboot`, `failed`.|
|qualityUpdateVersion|String|The Quality Update Version of the device.|
|featureUpdateVersion|String|The current feature update version of the device.|
|lastScanDateTime|DateTimeOffset|The date time that the Windows Update Agent did a successful scan.|
|lastSyncDateTime|DateTimeOffset|Last date time that the device sync with with Microsoft Intune.|



## Response
If successful, this method returns a `201 Created` response code and a [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsUpdateForBusinessConfiguration/deviceUpdateStates
Content-type: application/json
Content-length: 504

{
  "@odata.type": "#microsoft.graph.windowsUpdateState",
  "deviceId": "Device Id value",
  "userId": "User Id value",
  "deviceDisplayName": "Device Display Name value",
  "userPrincipalName": "User Principal Name value",
  "status": "pendingInstallation",
  "qualityUpdateVersion": "Quality Update Version value",
  "featureUpdateVersion": "Feature Update Version value",
  "lastScanDateTime": "2016-12-31T23:59:18.0955018-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 553

{
  "@odata.type": "#microsoft.graph.windowsUpdateState",
  "id": "3d92af00-af00-3d92-00af-923d00af923d",
  "deviceId": "Device Id value",
  "userId": "User Id value",
  "deviceDisplayName": "Device Display Name value",
  "userPrincipalName": "User Principal Name value",
  "status": "pendingInstallation",
  "qualityUpdateVersion": "Quality Update Version value",
  "featureUpdateVersion": "Feature Update Version value",
  "lastScanDateTime": "2016-12-31T23:59:18.0955018-08:00",
  "lastSyncDateTime": "2017-01-01T00:02:49.3205976-08:00"
}
```







