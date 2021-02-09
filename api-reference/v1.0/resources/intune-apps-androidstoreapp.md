---
title: "androidStoreApp resource type"
description: "Contains properties and inherited properties for Android store apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidStoreApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for Android store apps.


Inherits from [mobileApp](../resources/intune-apps-mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidStoreApps](../api/intune-apps-androidstoreapp-list.md)|[androidStoreApp](../resources/intune-apps-androidstoreapp.md) collection|List properties and relationships of the [androidStoreApp](../resources/intune-apps-androidstoreapp.md) objects.|
|[Get androidStoreApp](../api/intune-apps-androidstoreapp-get.md)|[androidStoreApp](../resources/intune-apps-androidstoreapp.md)|Read properties and relationships of the [androidStoreApp](../resources/intune-apps-androidstoreapp.md) object.|
|[Create androidStoreApp](../api/intune-apps-androidstoreapp-create.md)|[androidStoreApp](../resources/intune-apps-androidstoreapp.md)|Create a new [androidStoreApp](../resources/intune-apps-androidstoreapp.md) object.|
|[Delete androidStoreApp](../api/intune-apps-androidstoreapp-delete.md)|None|Deletes a [androidStoreApp](../resources/intune-apps-androidstoreapp.md).|
|[Update androidStoreApp](../api/intune-apps-androidstoreapp-update.md)|[androidStoreApp](../resources/intune-apps-androidstoreapp.md)|Update the properties of a [androidStoreApp](../resources/intune-apps-androidstoreapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|packageId|String|The package identifier.|
|appStoreUrl|String|The Android app store URL.|
|minimumSupportedOperatingSystem|[androidMinimumOperatingSystem](../resources/intune-apps-androidminimumoperatingsystem.md)|The value for the minimum applicable operating system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidStoreApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidStoreApp",
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









