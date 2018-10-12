# deviceManagementScriptDeviceState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for device run state of the device management script.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementScriptDeviceStates](../api/intune_devices_devicemanagementscriptdevicestate_list.md)|[deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md) collection|List properties and relationships of the [deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md) objects.|
|[Get deviceManagementScriptDeviceState](../api/intune_devices_devicemanagementscriptdevicestate_get.md)|[deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md)|Read properties and relationships of the [deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md) object.|
|[Create deviceManagementScriptDeviceState](../api/intune_devices_devicemanagementscriptdevicestate_create.md)|[deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md)|Create a new [deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md) object.|
|[Delete deviceManagementScriptDeviceState](../api/intune_devices_devicemanagementscriptdevicestate_delete.md)|None|Deletes a [deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md).|
|[Update deviceManagementScriptDeviceState](../api/intune_devices_devicemanagementscriptdevicestate_update.md)|[deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md)|Update the properties of a [deviceManagementScriptDeviceState](../resources/intune_devices_devicemanagementscriptdevicestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device management script device state entity.|
|runState|[runState](../resources/intune_shared_runstate.md)|State of latest run of the device management script. Possible values are: `unknown`, `success`, `fail`.|
|resultMessage|String|Details of execution output.|
|lastStateUpdateDateTime|DateTimeOffset|Latest time the device management script executes.|
|errorCode|Int32|Error code corresponding to erroneous execution of the device management script.|
|errorDescription|String|Error description corresponding to erroneous execution of the device management script.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedDevice|[managedDevice](../resources/intune_devices_manageddevice.md)|The managed devices that executes the device management script.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptDeviceState",
  "id": "String (identifier)",
  "runState": "String",
  "resultMessage": "String",
  "lastStateUpdateDateTime": "String (timestamp)",
  "errorCode": 1024,
  "errorDescription": "String"
}
```



