﻿# iosVppApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for iOS Volume-Purchased Program (VPP) Apps.

Inherits from [mobileApp](../resources/intune_apps_mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppApps](../api/intune_apps_iosvppapp_list.md)|[iosVppApp](../resources/intune_apps_iosvppapp.md) collection|List properties and relationships of the [iosVppApp](../resources/intune_apps_iosvppapp.md) objects.|
|[Get iosVppApp](../api/intune_apps_iosvppapp_get.md)|[iosVppApp](../resources/intune_apps_iosvppapp.md)|Read properties and relationships of the [iosVppApp](../resources/intune_apps_iosvppapp.md) object.|
|[Create iosVppApp](../api/intune_apps_iosvppapp_create.md)|[iosVppApp](../resources/intune_apps_iosvppapp.md)|Create a new [iosVppApp](../resources/intune_apps_iosvppapp.md) object.|
|[Delete iosVppApp](../api/intune_apps_iosvppapp_delete.md)|None|Deletes a [iosVppApp](../resources/intune_apps_iosvppapp.md).|
|[Update iosVppApp](../api/intune_apps_iosvppapp_update.md)|[iosVppApp](../resources/intune_apps_iosvppapp.md)|Update the properties of a [iosVppApp](../resources/intune_apps_iosvppapp.md) object.|
|[revokeAllLicenses action](../api/intune_apps_iosvppapp_revokealllicenses.md)|None|Revoke all assigned iOS VPP licenses for given app.|
|[revokeUserLicense action](../api/intune_apps_iosvppapp_revokeuserlicense.md)|None|Revoke assigned iOS VPP user license for given app.|
|[revokeDeviceLicense action](../api/intune_apps_iosvppapp_revokedevicelicense.md)|None|Revoke assigned iOS VPP device license for given app.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune_shared_mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|uploadState|Int32|The upload state. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune_apps_mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|usedLicenseCount|Int32|The number of VPP licenses in use.|
|totalLicenseCount|Int32|The total number of VPP licenses.|
|releaseDateTime|DateTimeOffset|The VPP application release date and time.|
|appStoreUrl|String|The store URL.|
|licensingType|[vppLicensingType](../resources/intune_apps_vpplicensingtype.md)|The supported License Type.|
|applicableDeviceType|[iosDeviceType](../resources/intune_apps_iosdevicetype.md)|The applicable iOS Device Type.|
|vppTokenOrganizationName|String|The organization associated with the Apple Volume Purchase Program Token|
|vppTokenAccountType|[vppTokenAccountType](../resources/intune_shared_vpptokenaccounttype.md)|The type of volume purchase program which the given Apple Volume Purchase Program Token is associated with. Possible values are: `business`, `education`. Possible values are: `business`, `education`.|
|vppTokenAppleId|String|The Apple Id associated with the given Apple Volume Purchase Program Token.|
|bundleId|String|The Identity Name.|
|vppTokenId|String|Identifier of the VPP token associated with this app.|
|revokeLicenseActionResults|[iosVppAppRevokeLicensesActionResult](../resources/intune_apps_iosvppapprevokelicensesactionresult.md) collection|Results of revoke license actions on this app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignedLicenses|[iosVppAppAssignedLicense](../resources/intune_apps_iosvppappassignedlicense.md) collection|The licenses assigned to this app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppApp"
}
-->
``` json
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
  "publishingState": "String",
  "usedLicenseCount": 1024,
  "totalLicenseCount": 1024,
  "releaseDateTime": "String (timestamp)",
  "appStoreUrl": "String",
  "licensingType": {
    "@odata.type": "microsoft.graph.vppLicensingType",
    "supportUserLicensing": true,
    "supportDeviceLicensing": true,
    "supportsUserLicensing": true,
    "supportsDeviceLicensing": true
  },
  "applicableDeviceType": {
    "@odata.type": "microsoft.graph.iosDeviceType",
    "iPad": true,
    "iPhoneAndIPod": true
  },
  "vppTokenOrganizationName": "String",
  "vppTokenAccountType": "String",
  "vppTokenAppleId": "String",
  "bundleId": "String",
  "vppTokenId": "String",
  "revokeLicenseActionResults": [
    {
      "@odata.type": "microsoft.graph.iosVppAppRevokeLicensesActionResult",
      "userId": "String",
      "managedDeviceId": "String",
      "totalLicensesCount": 1024,
      "failedLicensesCount": 1024,
      "actionFailureReason": "String",
      "actionName": "String",
      "actionState": "String",
      "startDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)"
    }
  ]
}
```





