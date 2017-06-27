#  resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for user run state of the device management script.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceManagementScriptUserStates](../api/intune_devicefe_devicemanagementscriptuserstate_list.md)|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) collection|List properties and relationships of the [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) objects.|
|[Get deviceManagementScriptUserState](../api/intune_devicefe_devicemanagementscriptuserstate_get.md)|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md)|Read properties and relationships of the [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) object.|
|[Create deviceManagementScriptUserState](../api/intune_devicefe_devicemanagementscriptuserstate_create.md)|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md)|Create a new [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) object.|
|[Delete deviceManagementScriptUserState](../api/intune_devicefe_devicemanagementscriptuserstate_delete.md)|None|Deletes a [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md).|
|[Update deviceManagementScriptUserState](../api/intune_devicefe_devicemanagementscriptuserstate_update.md)|[deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md)|Update the properties of a [deviceManagementScriptUserState](../resources/intune_devicefe_devicemanagementscriptuserstate.md) object.|
|[List deviceManagementScriptDeviceStates](../api/intune_devicefe_devicemanagementscriptdevicestate_list.md)|[deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) collection|List properties and relationships of the [deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the device management script user state entity.|
|successDeviceCount|Int32|Success device count for specific user.|
|errorDeviceCount|Int32|Error device count for specific user.|
|userPrincipalName|String|User principle name of specific user.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceRunStates|[deviceManagementScriptDeviceState](../resources/intune_devicefe_devicemanagementscriptdevicestate.md) collection|List of run states for this script across all devices of specific user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementScriptUserState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagementScriptUserState",
  "id": "String (identifier)",
  "successDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "userPrincipalName": "String"
}
```



