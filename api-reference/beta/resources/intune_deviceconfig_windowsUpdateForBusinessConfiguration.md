# windowsUpdateForBusinessConfiguration resource type

Windows Update for business configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsUpdateForBusinessConfigurations](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_list.md)|[windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) collection|List properties and relationships of the [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) objects.|
|[Get windowsUpdateForBusinessConfiguration](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_get.md)|[windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md)|Read properties and relationships of the [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object.|
|[Create windowsUpdateForBusinessConfiguration](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_create.md)|[windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md)|Create a new [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object.|
|[Delete windowsUpdateForBusinessConfiguration](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_delete.md)|None|Deletes a [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md).|
|[Update windowsUpdateForBusinessConfiguration](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_update.md)|[windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md)|Update the properties of a [windowsUpdateForBusinessConfiguration](../resources/intune_deviceconfig_windowsUpdateForBusinessConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_windowsUpdateForBusinessConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deliveryOptimizationMode|String|Delivery Optimization Mode Possible values are: `userDefined`, `httpOnly`, `httpWithPeeringNat`, `httpWithPeeringPrivateGroup`, `httpWithInternetPeering`, `simpleDownload`, `bypassMode`.|
|prereleaseFeatures|String|The pre-release features. Possible values are: `userDefined`, `settingsOnly`, `settingsAndExperimentations`, `notAllowed`.|
|automaticUpdateMode|String|Automatic update mode. Possible values are: `userDefined`, `notifyDownload`, `autoInstallAtMaintenanceTime`, `autoInstallAndRebootAtMaintenanceTime`, `autoInstallAndRebootAtScheduledTime`, `autoInstallAndRebootWithoutEndUserControl`.|
|microsoftUpdateServiceAllowed|Boolean|Allow Microsoft Update Service|
|driversExcluded|Boolean|Exclude Windows update Drivers|
|installationSchedule|[windowsUpdateInstallScheduleType](../resources/intune_deviceconfig_windowsUpdateInstallScheduleType.md)|Installation schedule|
|qualityUpdatesDeferralPeriodInDays|Int32|Defer Quality Updates by these many days|
|featureUpdatesDeferralPeriodInDays|Int32|Defer Feature Updates by these many days|
|qualityUpdatesPaused|Boolean|Pause Quality Updates|
|featureUpdatesPaused|Boolean|Pause Feature Updates|
|qualityUpdatesPauseExpiryDateTime|DateTimeOffset|Quality Updates Pause Expiry datetime|
|featureUpdatesPauseExpiryDateTime|DateTimeOffset|Feature Updates Pause Expiry datetime|
|businessReadyUpdatesOnly|String|Business ready updates only or regular updates allowed too Possible values are: `userDefined`, `all`, `businessReadyOnly`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdateForBusinessConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsUpdateForBusinessConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "deliveryOptimizationMode": "String",
  "prereleaseFeatures": "String",
  "automaticUpdateMode": "String",
  "microsoftUpdateServiceAllowed": true,
  "driversExcluded": true,
  "installationSchedule": {
    "@odata.type": "microsoft.graph.windowsUpdateInstallScheduleType"
  },
  "qualityUpdatesDeferralPeriodInDays": 1024,
  "featureUpdatesDeferralPeriodInDays": 1024,
  "qualityUpdatesPaused": true,
  "featureUpdatesPaused": true,
  "qualityUpdatesPauseExpiryDateTime": "String (timestamp)",
  "featureUpdatesPauseExpiryDateTime": "String (timestamp)",
  "businessReadyUpdatesOnly": "String"
}
```


