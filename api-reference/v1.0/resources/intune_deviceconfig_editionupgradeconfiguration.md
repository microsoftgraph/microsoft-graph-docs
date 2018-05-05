# editionUpgradeConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows 10 Edition Upgrade configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List editionUpgradeConfigurations](../api/intune_deviceconfig_editionupgradeconfiguration_list.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md) collection|List properties and relationships of the [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md) objects.|
|[Get editionUpgradeConfiguration](../api/intune_deviceconfig_editionupgradeconfiguration_get.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md)|Read properties and relationships of the [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md) object.|
|[Create editionUpgradeConfiguration](../api/intune_deviceconfig_editionupgradeconfiguration_create.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md)|Create a new [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md) object.|
|[Delete editionUpgradeConfiguration](../api/intune_deviceconfig_editionupgradeconfiguration_delete.md)|None|Deletes a [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md).|
|[Update editionUpgradeConfiguration](../api/intune_deviceconfig_editionupgradeconfiguration_update.md)|[editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md)|Update the properties of a [editionUpgradeConfiguration](../resources/intune_deviceconfig_editionupgradeconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|licenseType|[editionUpgradeLicenseType](../resources/intune_deviceconfig_editionupgradelicensetype.md)|Edition Upgrade License Type. Possible values are: `productKey`, `licenseFile`.|
|targetEdition|[windows10EditionType](../resources/intune_deviceconfig_windows10editiontype.md)|Edition Upgrade Target Edition. Possible values are: `windows10Enterprise`, `windows10EnterpriseN`, `windows10Education`, `windows10EducationN`, `windows10MobileEnterprise`, `windows10HolographicEnterprise`, `windows10Professional`, `windows10ProfessionalN`, `windows10ProfessionalEducation`, `windows10ProfessionalEducationN`, `windows10ProfessionalWorkstation`, `windows10ProfessionalWorkstationN`.|
|license|String|Edition Upgrade License File Content.|
|productKey|String|Edition Upgrade Product Key.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.editionUpgradeConfiguration"
}
-->
``` json
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



