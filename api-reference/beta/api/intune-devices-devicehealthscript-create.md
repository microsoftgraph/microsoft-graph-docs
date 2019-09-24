---
title: "Create deviceHealthScript"
description: "Create a new deviceHealthScript object."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: apiPageType
---

# Create deviceHealthScript

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /deviceManagement/deviceManagementScripts
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceHealthScript object.

The following table shows the properties that are required when you create the deviceHealthScript.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|displayName|String|Name of the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|description|String|Optional description for the device management script. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runSchedule|[runSchedule](../resources/intune-devices-runschedule.md)|The interval for script to run. If not defined the script will run once Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|scriptContent|Binary|The script content. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|createdDateTime|DateTimeOffset|The date and time the device management script was created. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the device management script was last modified. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runAsAccount|[runAsAccountType](../resources/intune-shared-runasaccounttype.md)|Indicates the type of execution context. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md). Possible values are: `system`, `user`.|
|enforceSignatureCheck|Boolean|Indicate whether the script signature needs be checked. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|fileName|String|Script file name. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|roleScopeTagIds|String collection|List of Scope Tag IDs for this PowerShellScript instance. Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|runAs32Bit|Boolean|A value indicating whether the PowerShell script should run as 32-bit Inherited from [deviceManagementScript](../resources/intune-devices-devicemanagementscript.md)|
|complianceRule|[deviceHealthScriptComplianceRule](../resources/intune-devices-devicehealthscriptcompliancerule.md)|Not yet documented|
|remediationScriptContent|Binary|Not yet documented|
|runRemediationScript|Boolean|Not yet documented|



## Response
If successful, this method returns a `201 Created` response code and a [deviceHealthScript](../resources/intune-devices-devicehealthscript.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts
Content-type: application/json
Content-length: 745

{
  "@odata.type": "#microsoft.graph.deviceHealthScript",
  "displayName": "Display Name value",
  "description": "Description value",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "c2NyaXB0Q29udGVudA==",
  "runAsAccount": "user",
  "enforceSignatureCheck": true,
  "fileName": "File Name value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "runAs32Bit": true,
  "complianceRule": {
    "@odata.type": "microsoft.graph.deviceHealthScriptComplianceRule",
    "detectionType": "string",
    "operator": "equal",
    "detectionValue": "Detection Value value"
  },
  "remediationScriptContent": "cmVtZWRpYXRpb25TY3JpcHRDb250ZW50",
  "runRemediationScript": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 917

{
  "@odata.type": "#microsoft.graph.deviceHealthScript",
  "id": "bcb60502-0502-bcb6-0205-b6bc0205b6bc",
  "displayName": "Display Name value",
  "description": "Description value",
  "runSchedule": {
    "@odata.type": "microsoft.graph.runSchedule"
  },
  "scriptContent": "c2NyaXB0Q29udGVudA==",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "runAsAccount": "user",
  "enforceSignatureCheck": true,
  "fileName": "File Name value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "runAs32Bit": true,
  "complianceRule": {
    "@odata.type": "microsoft.graph.deviceHealthScriptComplianceRule",
    "detectionType": "string",
    "operator": "equal",
    "detectionValue": "Detection Value value"
  },
  "remediationScriptContent": "cmVtZWRpYXRpb25TY3JpcHRDb250ZW50",
  "runRemediationScript": true
}
```






