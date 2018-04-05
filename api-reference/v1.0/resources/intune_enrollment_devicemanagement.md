# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_enrollment_devicemanagement_get.md)|[deviceManagement](../resources/intune_enrollment_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_enrollment_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_enrollment_devicemanagement_update.md)|[deviceManagement](../resources/intune_enrollment_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_enrollment_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune_enrollment_importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



