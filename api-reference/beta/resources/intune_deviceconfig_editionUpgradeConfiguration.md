# editionUpgradeConfiguration resource type

Windows 10 Edition Upgrade configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List editionUpgradeConfigurations](../api/intune_deviceconfig_editionUpgradeConfiguration_list.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) collection|List properties and relationships of the [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) objects.|
|[Get editionUpgradeConfiguration](../api/intune_deviceconfig_editionUpgradeConfiguration_get.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md)|Read properties and relationships of the [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) object.|
|[Create editionUpgradeConfiguration](../api/intune_deviceconfig_editionUpgradeConfiguration_create.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md)|Create a new [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) object.|
|[Delete editionUpgradeConfiguration](../api/intune_deviceconfig_editionUpgradeConfiguration_delete.md)|None|Deletes a [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md).|
|[Update editionUpgradeConfiguration](../api/intune_deviceconfig_editionUpgradeConfiguration_update.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md)|Update the properties of a [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionUpgradeConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_editionUpgradeConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_editionUpgradeConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_editionUpgradeConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|licenseType|String|Edition Upgrade License Type. Possible values are: `productKey`, `licenseFile`.|
|targetEdition|String|Edition Upgrade Target Edition. Possible values are: `windows10Enterprise`, `windows10EnterpriseN`, `windows10Education`, `windows10EducationN`, `windows10MobileEnterprise`, `windows10HolographicEnterprise`.|
|license|String|Edition Upgrade License File Content.|
|productKey|String|Edition Upgrade Product Key.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.editionUpgradeConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.editionUpgradeConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "licenseType": "String",
  "targetEdition": "String",
  "license": "String",
  "productKey": "String"
}
```


