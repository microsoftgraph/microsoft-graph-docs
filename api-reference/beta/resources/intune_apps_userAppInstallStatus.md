# userAppInstallStatus resource type

Contains properties for the installation summary for a user.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List userAppInstallStatuss](../api/intune_apps_userAppInstallStatus_list.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|List properties and relationships of the [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) objects.|
|[Get userAppInstallStatus](../api/intune_apps_userAppInstallStatus_get.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md)|Read properties and relationships of the [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object.|
|[Create userAppInstallStatus](../api/intune_apps_userAppInstallStatus_create.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md)|Create a new [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object.|
|[Delete userAppInstallStatus](../api/intune_apps_userAppInstallStatus_delete.md)|None|Deletes a [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md).|
|[Update userAppInstallStatus](../api/intune_apps_userAppInstallStatus_update.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md)|Update the properties of a [userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) object.|
|[Get mobileApp](../api/intune_apps_userAppInstallStatus_get_mobileApp.md)|[mobileApp](../resources/intune_apps_mobileApp.md)|Get the [mobileApp](../resources/intune_apps_mobileApp.md) from the app navigation property.|
|[List mobileAppInstallStatuss](../api/intune_apps_userAppInstallStatus_list_mobileAppInstallStatus.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|Get the mobileAppInstallStatuss from the deviceStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userName|String|User name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](../resources/intune_apps_mobileApp.md)|The navigation link to the mobile app.|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|The install state of the app.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userAppInstallStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.userAppInstallStatus",
  "id": "String (identifier)",
  "userName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```


