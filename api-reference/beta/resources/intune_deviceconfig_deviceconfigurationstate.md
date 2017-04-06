# deviceConfigurationState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device Configuration State for a given device.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationStates](../api/intune_deviceconfig_deviceconfigurationstate_list.md)|[deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) collection|List properties and relationships of the [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) objects.|
|[Get deviceConfigurationState](../api/intune_deviceconfig_deviceconfigurationstate_get.md)|[deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md)|Read properties and relationships of the [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) object.|
|[Create deviceConfigurationState](../api/intune_deviceconfig_deviceconfigurationstate_create.md)|[deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md)|Create a new [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) object.|
|[Delete deviceConfigurationState](../api/intune_deviceconfig_deviceconfigurationstate_delete.md)|None|Deletes a [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md).|
|[Update deviceConfigurationState](../api/intune_deviceconfig_deviceconfigurationstate_update.md)|[deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md)|Update the properties of a [deviceConfigurationState](../resources/intune_deviceconfig_deviceconfigurationstate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|settingStates|[deviceConfigurationSettingState](../resources/intune_deviceconfig_deviceconfigurationsettingstate.md) collection|Not yet documented|
|displayName|String|The name of the policy for this policyBase|
|version|Int32|The version of the policy|
|platformType|String|Platform type that the policy applies to Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`.|
|state|String|The compliance state of the policy Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|settingCount|Int32|Count of how many setting a policy holds|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationState"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationState",
  "id": "String (identifier)",
  "settingStates": [
    {
      "@odata.type": "microsoft.graph.deviceConfigurationSettingState",
      "setting": "String",
      "instanceDisplayName": "String",
      "state": "String",
      "errorCode": 1024,
      "errorDescription": "String"
    }
  ],
  "displayName": "String",
  "version": 1024,
  "platformType": "String",
  "state": "String",
  "settingCount": 1024
}
```



