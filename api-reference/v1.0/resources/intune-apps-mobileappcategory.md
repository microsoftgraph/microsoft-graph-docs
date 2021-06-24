---
title: "mobileAppCategory resource type"
description: "Contains properties for a single Intune app category."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppCategory resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for a single Intune app category.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppCategories](../api/intune-apps-mobileappcategory-list.md)|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](../resources/intune-apps-mobileappcategory.md) objects.|
|[Get mobileAppCategory](../api/intune-apps-mobileappcategory-get.md)|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md)|Read properties and relationships of the [mobileAppCategory](../resources/intune-apps-mobileappcategory.md) object.|
|[Create mobileAppCategory](../api/intune-apps-mobileappcategory-create.md)|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md)|Create a new [mobileAppCategory](../resources/intune-apps-mobileappcategory.md) object.|
|[Delete mobileAppCategory](../api/intune-apps-mobileappcategory-delete.md)|None|Deletes a [mobileAppCategory](../resources/intune-apps-mobileappcategory.md).|
|[Update mobileAppCategory](../api/intune-apps-mobileappcategory-update.md)|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md)|Update the properties of a [mobileAppCategory](../resources/intune-apps-mobileappcategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the entity.|
|displayName|String|The name of the app category.|
|lastModifiedDateTime|DateTimeOffset|The date and time the mobileAppCategory was last modified.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```




