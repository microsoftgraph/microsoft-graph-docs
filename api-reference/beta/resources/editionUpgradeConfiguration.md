# editionUpgradeConfiguration resource type

Windows 10 Edition Upgrade configuration.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List editionUpgradeConfigurations](../api/editionUpgradeConfiguration_list.md)|[editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md) collection|List properties and relationships of the [editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md) objects.|
|[Get editionUpgradeConfiguration](../api/editionUpgradeConfiguration_get.md)|[editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md)|Read properties and relationships of the [editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md) object.|
|[Create editionUpgradeConfiguration](../api/editionUpgradeConfiguration_create.md)|[editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md)|Create a new [editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md) object.|
|[Delete editionUpgradeConfiguration](../api/editionUpgradeConfiguration_delete.md)|None|Deletes a [editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md).|
|[Update editionUpgradeConfiguration](../api/editionUpgradeConfiguration_update.md)|[editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md)|Update the properties of a [editionUpgradeConfiguration](../resources/editionUpgradeConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/editionUpgradeConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/editionUpgradeConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/editionUpgradeConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|licenseType|String|Edition Upgrade License Type. Possible values are: `productKey`, `licenseFile`.|
|targetEdition|String|Edition Upgrade Target Edition. Possible values are: `windows10Enterprise`, `windows10EnterpriseN`, `windows10Education`, `windows10EducationN`, `windows10MobileEnterprise`, `windows10HolographicEnterprise`.|
|license|String|Edition Upgrade License File Content.|
|productKey|String|Edition Upgrade Product Key.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

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

