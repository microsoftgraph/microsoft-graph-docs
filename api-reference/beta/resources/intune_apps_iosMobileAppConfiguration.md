# iosMobileAppConfiguration resource type

Contains properties, inherited properties and actions for iOS mobile app configurations.

Inherits from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosMobileAppConfigurations](../api/intune_apps_iosMobileAppConfiguration_list.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md) collection|List properties and relationships of the [iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md) objects.|
|[Get iosMobileAppConfiguration](../api/intune_apps_iosMobileAppConfiguration_get.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md)|Read properties and relationships of the [iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md) object.|
|[Create iosMobileAppConfiguration](../api/intune_apps_iosMobileAppConfiguration_create.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md)|Create a new [iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md) object.|
|[Delete iosMobileAppConfiguration](../api/intune_apps_iosMobileAppConfiguration_delete.md)|None|Deletes a [iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md).|
|[Update iosMobileAppConfiguration](../api/intune_apps_iosMobileAppConfiguration_update.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md)|Update the properties of a [iosMobileAppConfiguration](../resources/intune_apps_iosMobileAppConfiguration.md) object.|
|[List mdmAppConfigGroupAssignments](../api/intune_apps_iosMobileAppConfiguration_list_mdmAppConfigGroupAssignment.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) collection|Get the mdmAppConfigGroupAssignments from the groupAssignments navigation property.|
|[List managedDeviceMobileAppConfigurationDeviceStatuss](../api/intune_apps_iosMobileAppConfiguration_list_managedDeviceMobileAppConfigurationDeviceStatus.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) collection|Get the managedDeviceMobileAppConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List managedDeviceMobileAppConfigurationUserStatuss](../api/intune_apps_iosMobileAppConfiguration_list_managedDeviceMobileAppConfigurationUserStatus.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) collection|Get the managedDeviceMobileAppConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|settingXml|String|mdm app configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|settings|[appConfigurationSettingItem](../resources/intune_apps_appConfigurationSettingItem.md) collection|app configuration setting items. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|targetedMobileApps|String collection|the associated app. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) collection|the associated group assignments. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) collection|List of ManagedDeviceMobileAppConfigurationDeviceStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosMobileAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosMobileAppConfiguration",
  "id": "String (identifier)",
  "settingXml": "String",
  "settings": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSettingItem",
      "appConfigKey": "String",
      "appConfigKeyType": "String",
      "appConfigKeyValue": "String"
    }
  ],
  "targetedMobileApps": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024
}
```


