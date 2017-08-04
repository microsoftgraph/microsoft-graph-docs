#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for the installation status for a user.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List userAppInstallStatuses](../api/intune_apps_userappinstallstatus_list.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) objects.|
|[Get userAppInstallStatus](../api/intune_apps_userappinstallstatus_get.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md)|Read properties and relationships of the [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) object.|
|[Create userAppInstallStatus](../api/intune_apps_userappinstallstatus_create.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md)|Create a new [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) object.|
|[Delete userAppInstallStatus](../api/intune_apps_userappinstallstatus_delete.md)|None|Deletes a [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md).|
|[Update userAppInstallStatus](../api/intune_apps_userappinstallstatus_update.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md)|Update the properties of a [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) object.|
|[Get mobileApp](../api/intune_apps_mobileapp_get.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Read properties and relationships of the [mobileApp](../resources/intune_apps_mobileapp.md) object.|
|[List mobileAppInstallStatuses](../api/intune_apps_mobileappinstallstatus_list.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userName|String|User name.|
|userPrincipalName|String|User Principal Name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|app|[mobileApp](../resources/intune_apps_mobileapp.md)|The navigation link to the mobile app.|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|The install state of the app.|

## JSON Representation
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
  "userPrincipalName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```



