# officeSuiteApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for the Office365 Suite App.

Inherits from [mobileApp](../resources/intune_apps_mobileapp.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List officeSuiteApps](../api/intune_apps_officesuiteapp_list.md)|[officeSuiteApp](../resources/intune_apps_officesuiteapp.md) collection|List properties and relationships of the [officeSuiteApp](../resources/intune_apps_officesuiteapp.md) objects.|
|[Get officeSuiteApp](../api/intune_apps_officesuiteapp_get.md)|[officeSuiteApp](../resources/intune_apps_officesuiteapp.md)|Read properties and relationships of the [officeSuiteApp](../resources/intune_apps_officesuiteapp.md) object.|
|[Create officeSuiteApp](../api/intune_apps_officesuiteapp_create.md)|[officeSuiteApp](../resources/intune_apps_officesuiteapp.md)|Create a new [officeSuiteApp](../resources/intune_apps_officesuiteapp.md) object.|
|[Delete officeSuiteApp](../api/intune_apps_officesuiteapp_delete.md)|None|Deletes a [officeSuiteApp](../resources/intune_apps_officesuiteapp.md).|
|[Update officeSuiteApp](../api/intune_apps_officesuiteapp_update.md)|[officeSuiteApp](../resources/intune_apps_officesuiteapp.md)|Update the properties of a [officeSuiteApp](../resources/intune_apps_officesuiteapp.md) object.|
|[List mobileAppCategories](../api/intune_apps_officesuiteapp_list_mobileappcategory.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|Get the mobileAppCategories from the categories navigation property.|
|[List mobileAppGroupAssignments](../api/intune_apps_officesuiteapp_list_mobileappgroupassignment.md)|[mobileAppGroupAssignment](../resources/intune_apps_mobileappgroupassignment.md) collection|Get the mobileAppGroupAssignments from the groupAssignments navigation property.|
|[Get mobileAppInstallSummary](../api/intune_apps_officesuiteapp_get_mobileappinstallsummary.md)|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Get the [mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md) from the installSummary navigation property.|
|[List mobileAppInstallStatuses](../api/intune_apps_officesuiteapp_list_mobileappinstallstatus.md)|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|Get the mobileAppInstallStatuses from the deviceStatuses navigation property.|
|[List userAppInstallStatuses](../api/intune_apps_officesuiteapp_list_userappinstallstatus.md)|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|Get the userAppInstallStatuses from the userStatuses navigation property.|

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
|autoAcceptEula|Boolean|The value to accept the EULA automatically on the enduser's device.|
|productIds|String collection|The Product Ids that represent the Office365 Suite SKU.|
|excludedApps|[excludedApps](../resources/intune_apps_excludedapps.md)|The property to represent the Apps which are excluded from the selected Office365 Product Id.|
|useSharedComputerActivation|Boolean|The property to represent that whether the shared computer activation is used not for Office365 App Suite.|
|updateChannel|String|The property to represent the Office365 Update Channel. Possible values are: `none`, `current`, `deferred`, `firstReleaseCurrent`, `firstReleaseDeferred`.|
|officePlatformArchitecture|String|The property to represent the Office365 App Suite version. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|localesToInstall|String collection|The property to represent the locales which are installed when the Apps from Office365 is installed. It uses standard RFC 6033. Ref: https://technet.microsoft.com/en-us/library/cc179219(v=office.16).aspx|

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
  "@odata.type": "microsoft.graph.officeSuiteApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.officeSuiteApp",
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
  "autoAcceptEula": true,
  "productIds": [
    "String"
  ],
  "excludedApps": {
    "@odata.type": "microsoft.graph.excludedApps",
    "access": true,
    "excel": true,
    "groove": true,
    "infoPath": true,
    "lync": true,
    "oneDrive": true,
    "oneNote": true,
    "outlook": true,
    "powerPoint": true,
    "publisher": true,
    "sharePointDesigner": true,
    "visio": true,
    "word": true
  },
  "useSharedComputerActivation": true,
  "updateChannel": "String",
  "officePlatformArchitecture": "String",
  "localesToInstall": [
    "String"
  ]
}
```



