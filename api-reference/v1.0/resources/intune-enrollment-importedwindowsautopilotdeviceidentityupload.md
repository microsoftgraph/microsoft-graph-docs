---
title: "importedWindowsAutopilotDeviceIdentityUpload resource type"
description: "Import windows autopilot devices using upload."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# importedWindowsAutopilotDeviceIdentityUpload resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Import windows autopilot devices using upload.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedWindowsAutopilotDeviceIdentityUploads](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-list.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) collection|List properties and relationships of the [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) objects.|
|[Get importedWindowsAutopilotDeviceIdentityUpload](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-get.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md)|Read properties and relationships of the [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) object.|
|[Create importedWindowsAutopilotDeviceIdentityUpload](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-create.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md)|Create a new [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) object.|
|[Delete importedWindowsAutopilotDeviceIdentityUpload](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-delete.md)|None|Deletes a [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md).|
|[Update importedWindowsAutopilotDeviceIdentityUpload](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-update.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md)|Update the properties of a [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityupload.md) object.|
|[autopilotDeviceStream function](../api/intune-enrollment-importedwindowsautopilotdeviceidentityupload-autopilotdevicestream.md)|String|Create a upload request with autopilot device stream in it.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|createdDateTimeUtc|DateTimeOffset|DateTime when the entity is created.|
|status|[importedWindowsAutopilotDeviceIdentityUploadStatus](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityuploadstatus.md)|Upload status. Possible values are: `noUpload`, `pending`, `complete`, `error`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune-enrollment-importedwindowsautopilotdeviceidentity.md) collection|Collection of all Autopilot devices as a part of this upload.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentityUpload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedWindowsAutopilotDeviceIdentityUpload",
  "id": "String (identifier)",
  "createdDateTimeUtc": "String (timestamp)",
  "status": "String"
}
```



