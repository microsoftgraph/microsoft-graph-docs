# deviceManagementScriptState resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for execution state of the device management script.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceManagementScriptStates](../api/intune_devicefe_devicemanagementscriptstate_list.md)|[deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) collection|List properties and relationships of the [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) objects.|
|[Get deviceManagementScriptState](../api/intune_devicefe_devicemanagementscriptstate_get.md)|[deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md)|Read properties and relationships of the [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) object.|
|[Create deviceManagementScriptState](../api/intune_devicefe_devicemanagementscriptstate_create.md)|[deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md)|Create a new [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) object.|
|[Delete deviceManagementScriptState](../api/intune_devicefe_devicemanagementscriptstate_delete.md)|None|Deletes a [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md).|
|[Update deviceManagementScriptState](../api/intune_devicefe_devicemanagementscriptstate_update.md)|[deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md)|Update the properties of a [deviceManagementScriptState](../resources/intune_devicefe_devicemanagementscriptstate.md) object.|
|[Get managedDevice](../api/intune_devicefe_devicemanagementscriptstate_get_manageddevice.md)|[managedDevice](../resources/intune_devicefe_manageddevice.md)|Get the [managedDevice](../resources/intune_devicefe_manageddevice.md) from the managedDevice navigation property.|
|[Get user](../api/intune_devicefe_devicemanagementscriptstate_get_user.md)|[user](../resources/intune_devicefe_user.md)|Get the [user](../resources/intune_devicefe_user.md) from the user navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the device management script state entity.|
|runState|String|State of latest run of the device management script. Possible values are: `unknown`, `success`, `fail`.|
|resultMessage|String|Details of execution output.|
|lastStateUpdateDateTime|DateTimeOffset|Latest time the device management script executes.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|managedDevice|[managedDevice](../resources/intune_devicefe_manageddevice.md)|The managed devices that executes the device management script.|
|user|[user](../resources/intune_devicefe_user.md)|The user of the managed device that executes the device management script.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptState",
  "id": "String (identifier)",
  "runState": "String",
  "resultMessage": "String",
  "lastStateUpdateDateTime": "String (timestamp)"
}
```



