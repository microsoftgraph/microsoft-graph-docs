---
title: "managedEBookCategory resource type"
description: "Contains properties for a single Intune eBook category."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# managedEBookCategory resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for a single Intune eBook category.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedEBookCategories](../api/intune-books-managedebookcategory-list.md)|[managedEBookCategory](../resources/intune-books-managedebookcategory.md) collection|List properties and relationships of the [managedEBookCategory](../resources/intune-books-managedebookcategory.md) objects.|
|[Get managedEBookCategory](../api/intune-books-managedebookcategory-get.md)|[managedEBookCategory](../resources/intune-books-managedebookcategory.md)|Read properties and relationships of the [managedEBookCategory](../resources/intune-books-managedebookcategory.md) object.|
|[Create managedEBookCategory](../api/intune-books-managedebookcategory-create.md)|[managedEBookCategory](../resources/intune-books-managedebookcategory.md)|Create a new [managedEBookCategory](../resources/intune-books-managedebookcategory.md) object.|
|[Delete managedEBookCategory](../api/intune-books-managedebookcategory-delete.md)|None|Deletes a [managedEBookCategory](../resources/intune-books-managedebookcategory.md).|
|[Update managedEBookCategory](../api/intune-books-managedebookcategory-update.md)|[managedEBookCategory](../resources/intune-books-managedebookcategory.md)|Update the properties of a [managedEBookCategory](../resources/intune-books-managedebookcategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the entity.|
|displayName|String|The name of the eBook category.|
|lastModifiedDateTime|DateTimeOffset|The date and time the ManagedEBookCategory was last modified.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedEBookCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedEBookCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```





