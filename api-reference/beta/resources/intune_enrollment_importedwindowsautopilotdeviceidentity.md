# importedWindowsAutopilotDeviceIdentity resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Imported windows autopilot devices.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List importedWindowsAutopilotDeviceIdentities](../api/intune_enrollment_importedwindowsautopilotdeviceidentity_list.md)|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) collection|List properties and relationships of the [importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) objects.|
|[Get importedWindowsAutopilotDeviceIdentity](../api/intune_enrollment_importedwindowsautopilotdeviceidentity_get.md)|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md)|Read properties and relationships of the [importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) object.|
|[Create importedWindowsAutopilotDeviceIdentity](../api/intune_enrollment_importedwindowsautopilotdeviceidentity_create.md)|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md)|Create a new [importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) object.|
|[Delete importedWindowsAutopilotDeviceIdentity](../api/intune_enrollment_importedwindowsautopilotdeviceidentity_delete.md)|None|Deletes a [importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md).|
|[Update importedWindowsAutopilotDeviceIdentity](../api/intune_enrollment_importedwindowsautopilotdeviceidentity_update.md)|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md)|Update the properties of a [importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|orderIdentifier|String|Order Id of the Windows autopilot device.|
|serialNumber|String|Serial number of the Windows autopilot device.|
|productKey|String|Product Key of the Windows autopilot device.|
|hardwareIdentifier|Binary|Hardware Blob of the Windows autopilot device.|
|state|[importedWindowsAutopilotDeviceIdentityState](../resources/intune_enrollment_importedwindowsautopilotdeviceidentitystate.md)|Current state of the imported device.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedWindowsAutopilotDeviceIdentity",
  "id": "String (identifier)",
  "orderIdentifier": "String",
  "serialNumber": "String",
  "productKey": "String",
  "hardwareIdentifier": "binary",
  "state": {
    "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
    "deviceImportStatus": "String",
    "deviceRegistrationId": "String",
    "deviceErrorCode": 1024,
    "deviceErrorName": "String"
  }
}
```



