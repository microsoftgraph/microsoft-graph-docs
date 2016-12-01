# mobileAppInstallStatus resource type

Contains properties for the installation status of a mobile app for a device.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List mobileAppInstallStatuss](../api/intune_apps_mobileAppInstallStatus_list.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) objects.|
|[Get mobileAppInstallStatus](../api/intune_apps_mobileAppInstallStatus_get.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md)|Read properties and relationships of the [mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) object.|
|[Create mobileAppInstallStatus](../api/intune_apps_mobileAppInstallStatus_create.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md)|Create a new [mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) object.|
|[Delete mobileAppInstallStatus](../api/intune_apps_mobileAppInstallStatus_delete.md)|None|Deletes a [mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md).|
|[Update mobileAppInstallStatus](../api/intune_apps_mobileAppInstallStatus_update.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md)|Update the properties of a [mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) object.|
|[Get mobileApp](../api/intune_apps_mobileAppInstallStatus_get_mobileApp.md)|[mobileApp](../resources/intune_apps_mobileApp.md)|Get the [mobileApp](../resources/intune_apps_mobileApp.md) from the app navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|deviceName|String|Device name|
|deviceId|String|Device ID|
|lastSyncDateTime|DateTimeOffset|Last sync date time|
|mobileAppInstallStatusValue|Int32|The install state of the app.|
|errorCode|Int32|The error code for install failures.|
|deviceType|Int32|Device Type|
|osVersion|String|OS Version|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](../resources/intune_apps_mobileApp.md)|The navigation link to the mobile app.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppInstallStatus"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppInstallStatus",
  "id": "String (identifier)",
  "deviceName": "String",
  "deviceId": "String",
  "lastSyncDateTime": "String (timestamp)",
  "mobileAppInstallStatusValue": 1024,
  "errorCode": 1024,
  "deviceType": 1024,
  "osVersion": "String"
}
```


