---
title: "mobileApp resource type"
description: "An abstract class containing the base properties for Intune mobile apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An abstract class containing the base properties for Intune mobile apps.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileApps](../api/intune-apps-mobileapp-list.md)|[mobileApp](../resources/intune-apps-mobileapp.md) collection|List properties and relationships of the [mobileApp](../resources/intune-apps-mobileapp.md) objects.|
|[Get mobileApp](../api/intune-apps-mobileapp-get.md)|[mobileApp](../resources/intune-apps-mobileapp.md)|Read properties and relationships of the [mobileApp](../resources/intune-apps-mobileapp.md) object.|
|[assign action](../api/intune-apps-mobileapp-assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|The admin provided or imported title of the app.|
|description|String|The description of the app.|
|publisher|String|The publisher of the app.|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon.|
|createdDateTime|DateTimeOffset|The date and time the app was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified.|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin.|
|privacyInformationUrl|String|The privacy statement Url.|
|informationUrl|String|The more information Url.|
|owner|String|The owner of the app.|
|developer|String|The developer of the app.|
|notes|String|Notes for the app.|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Possible values are: `notPublished`, `processing`, `published`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app.|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app.|

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
  "publishingState": "String"
}
```




