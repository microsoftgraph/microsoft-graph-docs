---
title: "macOSOfficeSuiteApp resource type"
description: "Contains properties and inherited properties for the MacOS Office Suite App."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSOfficeSuiteApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for the MacOS Office Suite App.


Inherits from [mobileApp](../resources/intune-apps-mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSOfficeSuiteApps](../api/intune-apps-macosofficesuiteapp-list.md)|[macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md) collection|List properties and relationships of the [macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md) objects.|
|[Get macOSOfficeSuiteApp](../api/intune-apps-macosofficesuiteapp-get.md)|[macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md)|Read properties and relationships of the [macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md) object.|
|[Create macOSOfficeSuiteApp](../api/intune-apps-macosofficesuiteapp-create.md)|[macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md)|Create a new [macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md) object.|
|[Delete macOSOfficeSuiteApp](../api/intune-apps-macosofficesuiteapp-delete.md)|None|Deletes a [macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md).|
|[Update macOSOfficeSuiteApp](../api/intune-apps-macosofficesuiteapp-update.md)|[macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md)|Update the properties of a [macOSOfficeSuiteApp](../resources/intune-apps-macosofficesuiteapp.md) object.|

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
  "@odata.type": "microsoft.graph.macOSOfficeSuiteApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSOfficeSuiteApp",
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




