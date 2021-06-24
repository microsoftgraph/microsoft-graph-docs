---
title: "mobileAppContent resource type"
description: "Contains content properties for a specific app version. Each mobileAppContent can have multiple mobileAppContentFile."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppContent resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains content properties for a specific app version. Each mobileAppContent can have multiple mobileAppContentFile.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppContents](../api/intune-apps-mobileappcontent-list.md)|[mobileAppContent](../resources/intune-apps-mobileappcontent.md) collection|List properties and relationships of the [mobileAppContent](../resources/intune-apps-mobileappcontent.md) objects.|
|[Get mobileAppContent](../api/intune-apps-mobileappcontent-get.md)|[mobileAppContent](../resources/intune-apps-mobileappcontent.md)|Read properties and relationships of the [mobileAppContent](../resources/intune-apps-mobileappcontent.md) object.|
|[Create mobileAppContent](../api/intune-apps-mobileappcontent-create.md)|[mobileAppContent](../resources/intune-apps-mobileappcontent.md)|Create a new [mobileAppContent](../resources/intune-apps-mobileappcontent.md) object.|
|[Delete mobileAppContent](../api/intune-apps-mobileappcontent-delete.md)|None|Deletes a [mobileAppContent](../resources/intune-apps-mobileappcontent.md).|
|[Update mobileAppContent](../api/intune-apps-mobileappcontent-update.md)|[mobileAppContent](../resources/intune-apps-mobileappcontent.md)|Update the properties of a [mobileAppContent](../resources/intune-apps-mobileappcontent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The app content version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|files|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) collection|The list of files for this app content version.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppContent",
  "id": "String (identifier)"
}
```




