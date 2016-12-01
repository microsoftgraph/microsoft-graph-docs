# iosLobApp resource type

Contains properties and inherited properties for iOS Line Of Business apps.

Inherits from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosLobApps](../api/intune_apps_iosLobApp_list.md)|[iosLobApp](../resources/intune_apps_iosLobApp.md) collection|List properties and relationships of the [iosLobApp](../resources/intune_apps_iosLobApp.md) objects.|
|[Get iosLobApp](../api/intune_apps_iosLobApp_get.md)|[iosLobApp](../resources/intune_apps_iosLobApp.md)|Read properties and relationships of the [iosLobApp](../resources/intune_apps_iosLobApp.md) object.|
|[Create iosLobApp](../api/intune_apps_iosLobApp_create.md)|[iosLobApp](../resources/intune_apps_iosLobApp.md)|Create a new [iosLobApp](../resources/intune_apps_iosLobApp.md) object.|
|[Delete iosLobApp](../api/intune_apps_iosLobApp_delete.md)|None|Deletes a [iosLobApp](../resources/intune_apps_iosLobApp.md).|
|[Update iosLobApp](../api/intune_apps_iosLobApp_update.md)|[iosLobApp](../resources/intune_apps_iosLobApp.md)|Update the properties of a [iosLobApp](../resources/intune_apps_iosLobApp.md) object.|
|[List mobileAppCategories](../api/intune_apps_iosLobApp_list_mobileAppCategory.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|Get the mobileAppCategories from the categories navigation property.|
|[List mobileAppGroupAssignments](../api/intune_apps_iosLobApp_list_mobileAppGroupAssignment.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|Get the mobileAppGroupAssignments from the groupAssignments navigation property.|
|[List mobileAppInstallStatuss](../api/intune_apps_iosLobApp_list_mobileAppInstallStatus.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|Get the mobileAppInstallStatuss from the deviceStatuses navigation property.|
|[List userAppInstallStatuss](../api/intune_apps_iosLobApp_list_userAppInstallStatus.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|Get the userAppInstallStatuss from the userStatuses navigation property.|
|[List mobileAppContents](../api/intune_apps_iosLobApp_list_mobileAppContent.md)|[mobileAppContent](../resources/intune_apps_mobileAppContent.md) collection|Get the mobileAppContents from the contentVersions navigation property.|

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
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)|
|identityVersion|String|The identity version. Inherited from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)|
|bundleId|String|The Identity Name.|
|applicableDeviceType|[iosDeviceType](../resources/intune_apps_iosDeviceType.md)|The iOS architecture for which this app can run on.|
|minimumSupportedOperatingSystem|[iosMinimumOperatingSystem](../resources/intune_apps_iosMinimumOperatingSystem.md)|The value for the minimum applicable operating system.|
|expirationDateTime|DateTimeOffset|The expiration time.|
|manifest|Binary|The manifest information.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|groupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileApp.md)|
|contentVersions|[mobileAppContent](../resources/intune_apps_mobileAppContent.md) collection|The list of content versions for this app. Inherited from [mobileLobApp](../resources/intune_apps_mobileLobApp.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosLobApp",
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
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
  "identityVersion": "String",
  "bundleId": "String",
  "applicableDeviceType": {
    "@odata.type": "microsoft.graph.iosDeviceType",
    "iPad": true,
    "iPhoneAndIPod": true
  },
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.iosMinimumOperatingSystem",
    "v8_0": true,
    "v9_0": true,
    "v10_0": true
  },
  "expirationDateTime": "String (timestamp)",
  "manifest": "binary"
}
```


