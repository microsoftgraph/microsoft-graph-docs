# managedAndroidStoreApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for Android store apps that you can manage with an Intune app protection policy.

Inherits from [managedApp](../resources/intune_apps_managedapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAndroidStoreApps](../api/intune_apps_managedandroidstoreapp_list.md)|[managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md) collection|List properties and relationships of the [managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md) objects.|
|[Get managedAndroidStoreApp](../api/intune_apps_managedandroidstoreapp_get.md)|[managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md)|Read properties and relationships of the [managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md) object.|
|[Create managedAndroidStoreApp](../api/intune_apps_managedandroidstoreapp_create.md)|[managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md)|Create a new [managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md) object.|
|[Delete managedAndroidStoreApp](../api/intune_apps_managedandroidstoreapp_delete.md)|None|Deletes a [managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md).|
|[Update managedAndroidStoreApp](../api/intune_apps_managedandroidstoreapp_update.md)|[managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md)|Update the properties of a [managedAndroidStoreApp](../resources/intune_apps_managedandroidstoreapp.md) object.|

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
|publishingState|[mobileAppPublishingState](../resources/intune_apps_mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|appAvailability|[managedAppAvailability](../resources/intune_apps_managedappavailability.md)|The Application's availability. Inherited from [managedApp](../resources/intune_apps_managedapp.md). Possible values are: `global`, `lineOfBusiness`.|
|version|String|The Application's version. Inherited from [managedApp](../resources/intune_apps_managedapp.md)|
|packageId|String|The app's package ID.|
|appStoreUrl|String|The Android AppStoreUrl.|
|minimumSupportedOperatingSystem|[androidMinimumOperatingSystem](../resources/intune_apps_androidminimumoperatingsystem.md)|The value for the minimum supported operating system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAndroidStoreApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAndroidStoreApp",
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
  "publishingState": "String",
  "appAvailability": "String",
  "version": "String",
  "packageId": "String",
  "appStoreUrl": "String",
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.androidMinimumOperatingSystem",
    "v4_0": true,
    "v4_0_3": true,
    "v4_1": true,
    "v4_2": true,
    "v4_3": true,
    "v4_4": true,
    "v5_0": true,
    "v5_1": true
  }
}
```



