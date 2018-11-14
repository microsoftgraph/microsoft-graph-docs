# importedWindowsAutopilotDeviceIdentityUpload resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Import windows autopilot devices using upload.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedWindowsAutopilotDeviceIdentityUploads](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_list.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) collection|List properties and relationships of the [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) objects.|
|[Get importedWindowsAutopilotDeviceIdentityUpload](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_get.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md)|Read properties and relationships of the [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) object.|
|[Create importedWindowsAutopilotDeviceIdentityUpload](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_create.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md)|Create a new [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) object.|
|[Delete importedWindowsAutopilotDeviceIdentityUpload](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_delete.md)|None|Deletes a [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md).|
|[Update importedWindowsAutopilotDeviceIdentityUpload](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_update.md)|[importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md)|Update the properties of a [importedWindowsAutopilotDeviceIdentityUpload](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityupload.md) object.|
|[autopilotDeviceStream function](../api/intune_enrollment_importedwindowsautopilotdeviceidentityupload_autopilotdevicestream.md)|String|Create a upload request with autopilot device stream in it.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|createdDateTimeUtc|DateTimeOffset|DateTime when the entity is created.|
|status|[importedWindowsAutopilotDeviceIdentityUploadStatus](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityuploadstatus.md)|Upload status. Possible values are: `noUpload`, `pending`, `complete`, `error`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) collection|Collection of all Autopilot devices as a part of this upload.|

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



