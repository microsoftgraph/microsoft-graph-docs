# iosLobApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for iOS Line Of Business apps.

Inherits from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosLobApps](../api/intune_apps_ioslobapp_list.md)|[iosLobApp](../resources/intune_apps_ioslobapp.md) collection|List properties and relationships of the [iosLobApp](../resources/intune_apps_ioslobapp.md) objects.|
|[Get iosLobApp](../api/intune_apps_ioslobapp_get.md)|[iosLobApp](../resources/intune_apps_ioslobapp.md)|Read properties and relationships of the [iosLobApp](../resources/intune_apps_ioslobapp.md) object.|
|[Create iosLobApp](../api/intune_apps_ioslobapp_create.md)|[iosLobApp](../resources/intune_apps_ioslobapp.md)|Create a new [iosLobApp](../resources/intune_apps_ioslobapp.md) object.|
|[Delete iosLobApp](../api/intune_apps_ioslobapp_delete.md)|None|Deletes a [iosLobApp](../resources/intune_apps_ioslobapp.md).|
|[Update iosLobApp](../api/intune_apps_ioslobapp_update.md)|[iosLobApp](../resources/intune_apps_ioslobapp.md)|Update the properties of a [iosLobApp](../resources/intune_apps_ioslobapp.md) object.|

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
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|bundleId|String|The Identity Name.|
|applicableDeviceType|[iosDeviceType](../resources/intune_apps_iosdevicetype.md)|The iOS architecture for which this app can run on.|
|minimumSupportedOperatingSystem|[iosMinimumOperatingSystem](../resources/intune_apps_iosminimumoperatingsystem.md)|The value for the minimum applicable operating system.|
|expirationDateTime|DateTimeOffset|The expiration time.|
|versionNumber|String|The version number of iOS Line of Business (LoB) app.|
|buildNumber|String|The build number of iOS Line of Business (LoB) app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune_apps_mobileappcontent.md) collection|The list of content versions for this app. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobApp"
}
-->
``` json
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
  "publishingState": "String",
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
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
    "v10_0": true,
    "v11_0": true
  },
  "expirationDateTime": "String (timestamp)",
  "versionNumber": "String",
  "buildNumber": "String"
}
```



