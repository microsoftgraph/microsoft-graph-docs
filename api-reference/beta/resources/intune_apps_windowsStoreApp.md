# windowsStoreApp resource type

Contains properties and inherited properties for Windows Store apps.

Inherits from [mobileApp](../resources/intune_apps_mobileApp.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsStoreApps](../api/intune_apps_windowsStoreApp_list.md)|[windowsStoreApp](../resources/intune_apps_windowsStoreApp.md) collection|List properties and relationships of the [windowsStoreApp](../resources/intune_apps_windowsStoreApp.md) objects.|
|[Get windowsStoreApp](../api/intune_apps_windowsStoreApp_get.md)|[windowsStoreApp](../resources/intune_apps_windowsStoreApp.md)|Read properties and relationships of the [windowsStoreApp](../resources/intune_apps_windowsStoreApp.md) object.|
|[Create windowsStoreApp](../api/intune_apps_windowsStoreApp_create.md)|[windowsStoreApp](../resources/intune_apps_windowsStoreApp.md)|Create a new [windowsStoreApp](../resources/intune_apps_windowsStoreApp.md) object.|
|[Delete windowsStoreApp](../api/intune_apps_windowsStoreApp_delete.md)|None|Deletes a [windowsStoreApp](../resources/intune_apps_windowsStoreApp.md).|
|[Update windowsStoreApp](../api/intune_apps_windowsStoreApp_update.md)|[windowsStoreApp](../resources/intune_apps_windowsStoreApp.md)|Update the properties of a [windowsStoreApp](../resources/intune_apps_windowsStoreApp.md) object.|
|[List mobileAppCategories](../api/intune_apps_windowsStoreApp_list_mobileAppCategory.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|Get the mobileAppCategories from the categories navigation property.|
|[List mobileAppGroupAssignments](../api/intune_apps_windowsStoreApp_list_mobileAppGroupAssignment.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|Get the mobileAppGroupAssignments from the groupAssignments navigation property.|
|[List mobileAppInstallStatuss](../api/intune_apps_windowsStoreApp_list_mobileAppInstallStatus.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|Get the mobileAppInstallStatuss from the deviceStatuses navigation property.|
|[List userAppInstallStatuss](../api/intune_apps_windowsStoreApp_list_userAppInstallStatus.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|Get the userAppInstallStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|largeIcon|[mimeContent](../resources/intune_apps_mimeContent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|uploadState|Int32|The upload state. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileAppInstallSummary.md)|Mobile App Install Summary. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|appStoreUrl|String|The Windows app store URL.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|The list of categories for this app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|groupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsStoreApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsStoreApp",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "isFeatured": true,
  "privacyInformationUrl": "String",
  "informationUrl": "String",
  "owner": "String",
  "developer": "String",
  "notes": "String",
  "uploadState": 1024,
  "installSummary": {
    "@odata.type": "microsoft.graph.mobileAppInstallSummary",
    "installedDeviceCount": 1024,
    "failedDeviceCount": 1024,
    "notInstalledDeviceCount": 1024,
    "installedUserCount": 1024,
    "failedUserCount": 1024,
    "notInstalledUserCount": 1024
  },
  "appStoreUrl": "String"
}
```


