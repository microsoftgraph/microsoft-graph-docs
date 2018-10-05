# mobileApp resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

An abstract class containing the base properties for Intune mobile apps.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileApps](../api/intune_apps_mobileapp_list.md)|[mobileApp](../resources/intune_apps_mobileapp.md) collection|List properties and relationships of the [mobileApp](../resources/intune_apps_mobileapp.md) objects.|
|[Get mobileApp](../api/intune_apps_mobileapp_get.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Read properties and relationships of the [mobileApp](../resources/intune_apps_mobileapp.md) object.|
|[assign action](../api/intune_apps_mobileapp_assign.md)|None|Not yet documented|
|[getMobileAppCount function](../api/intune_apps_mobileapp_getmobileappcount.md)|Int64|Not yet documented|
|[getTopMobileApps function](../api/intune_apps_mobileapp_gettopmobileapps.md)|[mobileApp](../resources/intune_apps_mobileapp.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|The admin provided or imported title of the app.|
|description|String|The description of the app.|
|publisher|String|The publisher of the app.|
|largeIcon|[mimeContent](../resources/intune_shared_mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon.|
|createdDateTime|DateTimeOffset|The date and time the app was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified.|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin.|
|privacyInformationUrl|String|The privacy statement Url.|
|informationUrl|String|The more information Url.|
|owner|String|The owner of the app.|
|developer|String|The developer of the app.|
|notes|String|Notes for the app.|
|uploadState|Int32|The upload state.|
|publishingState|[mobileAppPublishingState](../resources/intune_apps_mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Possible values are: `notPublished`, `processing`, `published`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app.|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app.|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary.|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app.|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileApp",
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
  "publishingState": "String"
}
```



