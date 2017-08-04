#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Store for Business Apps.

Inherits from [mobileApp](../resources/intune_apps_mobileapp.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsStoreForBusinessApps](../api/intune_apps_windowsstoreforbusinessapp_list.md)|[windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md) collection|List properties and relationships of the [windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md) objects.|
|[Get windowsStoreForBusinessApp](../api/intune_apps_windowsstoreforbusinessapp_get.md)|[windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md)|Read properties and relationships of the [windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md) object.|
|[Create windowsStoreForBusinessApp](../api/intune_apps_windowsstoreforbusinessapp_create.md)|[windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md)|Create a new [windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md) object.|
|[Delete windowsStoreForBusinessApp](../api/intune_apps_windowsstoreforbusinessapp_delete.md)|None|Deletes a [windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md).|
|[Update windowsStoreForBusinessApp](../api/intune_apps_windowsstoreforbusinessapp_update.md)|[windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md)|Update the properties of a [windowsStoreForBusinessApp](../resources/intune_apps_windowsstoreforbusinessapp.md) object.|
|[List mobileAppCategories](../api/intune_apps_mobileappcategory_list.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](../resources/intune_apps_mobileappcategory.md) objects.|
|[List mobileAppGroupAssignments](../api/intune_apps_mobileappgroupassignment_list.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|List properties and relationships of the [mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) objects.|
|[Get mobileAppInstallSummary](../api/intune_apps_mobileappinstallsummary_get.md)|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Read properties and relationships of the [mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md) object.|
|[List mobileAppInstallStatuses](../api/intune_apps_mobileappinstallstatus_list.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) objects.|
|[List userAppInstallStatuses](../api/intune_apps_userappinstallstatus_list.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune_apps_mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|uploadState|Int32|The upload state. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|usedLicenseCount|Int32|The number of Windows Store for Business licenses in use.|
|totalLicenseCount|Int32|The total number of Windows Store for Business licenses.|
|productKey|String|The app product key|
|licenseType|String|The app license type Possible values are: `offline`, `online`.|
|packageIdentityName|String|The app package identifier|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|groupAssignments|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsStoreForBusinessApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsStoreForBusinessApp",
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
  "usedLicenseCount": 1024,
  "totalLicenseCount": 1024,
  "productKey": "String",
  "licenseType": "String",
  "packageIdentityName": "String"
}
```



