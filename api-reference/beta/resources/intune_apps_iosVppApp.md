# iosVppApp resource type

Contains properties and inherited properties for iOS Volume-Purchased Program (VPP) Apps.

Inherits from [mobileApp](../resources/intune_apps_mobileApp.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosVppApps](../api/intune_apps_iosVppApp_list.md)|[iosVppApp](../resources/intune_apps_iosVppApp.md) collection|List properties and relationships of the [iosVppApp](../resources/intune_apps_iosVppApp.md) objects.|
|[Get iosVppApp](../api/intune_apps_iosVppApp_get.md)|[iosVppApp](../resources/intune_apps_iosVppApp.md)|Read properties and relationships of the [iosVppApp](../resources/intune_apps_iosVppApp.md) object.|
|[Create iosVppApp](../api/intune_apps_iosVppApp_create.md)|[iosVppApp](../resources/intune_apps_iosVppApp.md)|Create a new [iosVppApp](../resources/intune_apps_iosVppApp.md) object.|
|[Delete iosVppApp](../api/intune_apps_iosVppApp_delete.md)|None|Deletes a [iosVppApp](../resources/intune_apps_iosVppApp.md).|
|[Update iosVppApp](../api/intune_apps_iosVppApp_update.md)|[iosVppApp](../resources/intune_apps_iosVppApp.md)|Update the properties of a [iosVppApp](../resources/intune_apps_iosVppApp.md) object.|
|[List mobileAppCategories](../api/intune_apps_iosVppApp_list_mobileAppCategory.md)|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|Get the mobileAppCategories from the categories navigation property.|
|[List mobileAppGroupAssignments](../api/intune_apps_iosVppApp_list_mobileAppGroupAssignment.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|Get the mobileAppGroupAssignments from the groupAssignments navigation property.|
|[List mobileAppInstallStatuss](../api/intune_apps_iosVppApp_list_mobileAppInstallStatus.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|Get the mobileAppInstallStatuss from the deviceStatuses navigation property.|
|[List userAppInstallStatuss](../api/intune_apps_iosVppApp_list_userAppInstallStatus.md)|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|Get the userAppInstallStatuss from the userStatuses navigation property.|
|[Get appleVolumePurchaseProgramToken](../api/intune_apps_iosVppApp_get_appleVolumePurchaseProgramToken.md)|[appleVolumePurchaseProgramToken](../resources/intune_apps_appleVolumePurchaseProgramToken.md)|Get the [appleVolumePurchaseProgramToken](../resources/intune_apps_appleVolumePurchaseProgramToken.md) from the vppToken navigation property.|

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
|usedLicenseCount|Int32|The number of VPP licenses in use.|
|totalLicenseCount|Int32|The total number of VPP licenses.|
|releaseDateTime|DateTimeOffset|The VPP application release date and time.|
|appStoreUrl|String|The store URL.|
|licensingType|[vppLicensingType](../resources/intune_apps_vppLicensingType.md)|The supported License Type.|
|applicableDeviceType|[iosDeviceType](../resources/intune_apps_iosDeviceType.md)|The applicable iOS Device Type.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) collection|The list of categories for this app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|groupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileAppGroupAssignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userAppInstallStatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](intune_apps_mobileApp.md)|
|vppToken|[appleVolumePurchaseProgramToken](../resources/intune_apps_appleVolumePurchaseProgramToken.md)|The VPP token assigned to the app.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosVppApp",
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
  "usedLicenseCount": 1024,
  "totalLicenseCount": 1024,
  "releaseDateTime": "String (timestamp)",
  "appStoreUrl": "String",
  "licensingType": {
    "@odata.type": "microsoft.graph.vppLicensingType",
    "supportUserLicensing": true,
    "supportDeviceLicensing": true
  },
  "applicableDeviceType": {
    "@odata.type": "microsoft.graph.iosDeviceType",
    "iPad": true,
    "iPhoneAndIPod": true
  }
}
```


