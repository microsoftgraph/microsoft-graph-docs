# deviceComplianceDeviceOverview resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceComplianceDeviceOverview](../api/intune_deviceconfig_devicecompliancedeviceoverview_get.md)|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Read properties and relationships of the [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) object.|
|[Update deviceComplianceDeviceOverview](../api/intune_deviceconfig_devicecompliancedeviceoverview_update.md)|[deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md)|Update the properties of a [deviceComplianceDeviceOverview](../resources/intune_deviceconfig_devicecompliancedeviceoverview.md) object.|

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
  "@odata.type": "microsoft.graph.deviceComplianceDeviceOverview"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceDeviceOverview",
  "id": "String (identifier)",
  "numberOfPendingDevices": 1024,
  "numberOfSucceededDevices": 1024,
  "numberOfErrorDevices": 1024,
  "numberOfFailedDevices": 1024,
  "lastUpdateTime": "String (timestamp)",
  "policyRevision": 1024
}
```



