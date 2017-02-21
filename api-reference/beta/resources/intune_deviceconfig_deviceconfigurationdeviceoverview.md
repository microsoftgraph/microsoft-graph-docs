# deviceConfigurationDeviceOverview resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_deviceconfigurationdeviceoverview_get.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Read properties and relationships of the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object.|
|[Update deviceConfigurationDeviceOverview](../api/intune_deviceconfig_deviceconfigurationdeviceoverview_update.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Update the properties of a [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|numberOfPendingDevices|Int32|Number of pending devices|
|numberOfSucceededDevices|Int32|Number of succeeded devices|
|numberOfErrorDevices|Int32|Number of error devices|
|numberOfFailedDevices|Int32|Number of failed devices|
|lastUpdateTime|DateTimeOffset|Last update time|
|policyRevision|Int32|Version of the policy for that overview|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationDeviceOverview"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationDeviceOverview",
  "id": "String (identifier)",
  "numberOfPendingDevices": 1024,
  "numberOfSucceededDevices": 1024,
  "numberOfErrorDevices": 1024,
  "numberOfFailedDevices": 1024,
  "lastUpdateTime": "String (timestamp)",
  "policyRevision": 1024
}
```



