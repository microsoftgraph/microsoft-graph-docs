# windowsPhone81AppXBundle resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties and inherited properties for Windows Phone 8.1 AppX Bundle Line Of Business apps.

Inherits from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsPhone81AppXBundles](../api/intune_apps_windowsphone81appxbundle_list.md)|[windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md) collection|List properties and relationships of the [windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md) objects.|
|[Get windowsPhone81AppXBundle](../api/intune_apps_windowsphone81appxbundle_get.md)|[windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md)|Read properties and relationships of the [windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md) object.|
|[Create windowsPhone81AppXBundle](../api/intune_apps_windowsphone81appxbundle_create.md)|[windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md)|Create a new [windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md) object.|
|[Delete windowsPhone81AppXBundle](../api/intune_apps_windowsphone81appxbundle_delete.md)|None|Deletes a [windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md).|
|[Update windowsPhone81AppXBundle](../api/intune_apps_windowsphone81appxbundle_update.md)|[windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md)|Update the properties of a [windowsPhone81AppXBundle](../resources/intune_apps_windowsphone81appxbundle.md) object.|

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
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|
|applicableArchitectures|[windowsArchitecture](../resources/intune_apps_windowsarchitecture.md)|The Windows architecture(s) for which this app can run on. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md). Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|identityName|String|The Identity Name. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|identityPublisherHash|String|The Identity Publisher Hash. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|identityResourceIdentifier|String|The Identity Resource Identifier. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|minimumSupportedOperatingSystem|[windowsMinimumOperatingSystem](../resources/intune_apps_windowsminimumoperatingsystem.md)|The value for the minimum applicable operating system. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|phoneProductIdentifier|String|The Phone Product Identifier. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|phonePublisherId|String|The Phone Publisher Id. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|identityVersion|String|The identity version. Inherited from [windowsPhone81AppX](../resources/intune_apps_windowsphone81appx.md)|
|appXPackageInformationList|[windowsPackageInformation](../resources/intune_apps_windowspackageinformation.md) collection|The list of AppX Package Information.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune_apps_mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|installSummary|[mobileAppInstallSummary](../resources/intune_apps_mobileappinstallsummary.md)|Mobile App Install Summary. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune_apps_mobileappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|userStatuses|[userAppInstallStatus](../resources/intune_apps_userappinstallstatus.md) collection|The list of installation states for this mobile app. Inherited from [mobileApp](../resources/intune_apps_mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune_apps_mobileappcontent.md) collection|The list of content versions for this app. Inherited from [mobileLobApp](../resources/intune_apps_mobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhone81AppXBundle"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsPhone81AppXBundle",
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
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
  "applicableArchitectures": "String",
  "identityName": "String",
  "identityPublisherHash": "String",
  "identityResourceIdentifier": "String",
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
    "v8_0": true,
    "v8_1": true,
    "v10_0": true
  },
  "phoneProductIdentifier": "String",
  "phonePublisherId": "String",
  "identityVersion": "String",
  "appXPackageInformationList": [
    {
      "@odata.type": "microsoft.graph.windowsPackageInformation",
      "applicableArchitecture": "String",
      "displayName": "String",
      "identityName": "String",
      "identityPublisher": "String",
      "identityResourceIdentifier": "String",
      "identityVersion": "String",
      "minimumSupportedOperatingSystem": {
        "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
        "v8_0": true,
        "v8_1": true,
        "v10_0": true
      }
    }
  ]
}
```



