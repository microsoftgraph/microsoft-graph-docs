# managedAndroidLobApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for Managed Android Line Of Business apps.

Inherits from [managedMobileLobApp](../resources/intune_apps_managedmobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAndroidLobApps](../api/intune_apps_managedandroidlobapp_list.md)|[managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md) collection|List properties and relationships of the [managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md) objects.|
|[Get managedAndroidLobApp](../api/intune_apps_managedandroidlobapp_get.md)|[managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md)|Read properties and relationships of the [managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md) object.|
|[Create managedAndroidLobApp](../api/intune_apps_managedandroidlobapp_create.md)|[managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md)|Create a new [managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md) object.|
|[Delete managedAndroidLobApp](../api/intune_apps_managedandroidlobapp_delete.md)|None|Deletes a [managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md).|
|[Update managedAndroidLobApp](../api/intune_apps_managedandroidlobapp_update.md)|[managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md)|Update the properties of a [managedAndroidLobApp](../resources/intune_apps_managedandroidlobapp.md) object.|

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
|committedContentVersion|String|The internal committed content version. Inherited from [managedMobileLobApp](../resources/intune_apps_managedmobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [managedMobileLobApp](../resources/intune_apps_managedmobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [managedMobileLobApp](../resources/intune_apps_managedmobilelobapp.md)|
|packageId|String|The package identifier.|
|minimumSupportedOperatingSystem|[androidMinimumOperatingSystem](../resources/intune_apps_androidminimumoperatingsystem.md)|The value for the minimum applicable operating system.|
|versionName|String|The version name of managed Android Line of Business (LoB) app.|
|versionCode|String|The version code of managed Android Line of Business (LoB) app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune_apps_mobileappcontent.md) collection|The list of content versions for this app. Inherited from [managedMobileLobApp](../resources/intune_apps_managedmobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAndroidLobApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAndroidLobApp",
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
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
  "packageId": "String",
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
  },
  "versionName": "String",
  "versionCode": "String"
}
```



