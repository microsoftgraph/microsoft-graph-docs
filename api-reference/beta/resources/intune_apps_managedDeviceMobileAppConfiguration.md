# managedDeviceMobileAppConfiguration resource type

An abstract class for Mobile app configuration for enrolled devices.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List managedDeviceMobileAppConfigurations](../api/intune_apps_managedDeviceMobileAppConfiguration_list.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md) collection|List properties and relationships of the [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md) objects.|
|[Get managedDeviceMobileAppConfiguration](../api/intune_apps_managedDeviceMobileAppConfiguration_get.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|Read properties and relationships of the [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md) object.|
|[Create managedDeviceMobileAppConfiguration](../api/intune_apps_managedDeviceMobileAppConfiguration_create.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|Create a new [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md) object.|
|[Delete managedDeviceMobileAppConfiguration](../api/intune_apps_managedDeviceMobileAppConfiguration_delete.md)|None|Deletes a [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md).|
|[Update managedDeviceMobileAppConfiguration](../api/intune_apps_managedDeviceMobileAppConfiguration_update.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md)|Update the properties of a [managedDeviceMobileAppConfiguration](../resources/intune_apps_managedDeviceMobileAppConfiguration.md) object.|
|[assign action](../api/intune_apps_managedDeviceMobileAppConfiguration_assign.md)|None|Not yet documented|
|[List mdmAppConfigGroupAssignments](../api/intune_apps_managedDeviceMobileAppConfiguration_list_mdmAppConfigGroupAssignment.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) collection|Get the mdmAppConfigGroupAssignments from the groupAssignments navigation property.|
|[List managedDeviceMobileAppConfigurationDeviceStatuss](../api/intune_apps_managedDeviceMobileAppConfiguration_list_managedDeviceMobileAppConfigurationDeviceStatus.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) collection|Get the managedDeviceMobileAppConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List managedDeviceMobileAppConfigurationUserStatuss](../api/intune_apps_managedDeviceMobileAppConfiguration_list_managedDeviceMobileAppConfigurationUserStatus.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) collection|Get the managedDeviceMobileAppConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|settingXml|String|mdm app configuration.|
|settings|[appConfigurationSettingItem](../resources/intune_apps_appConfigurationSettingItem.md) collection|app configuration setting items.|
|targetedMobileApps|String collection|the associated app.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmAppConfigGroupAssignment.md) collection|the associated group assignments.|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationDeviceStatus.md) collection|List of ManagedDeviceMobileAppConfigurationDeviceStatus.|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_managedDeviceMobileAppConfigurationUserStatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfiguration",
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



