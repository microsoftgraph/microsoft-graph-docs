---
title: "updatableAssetGroup resource type"
description: "A group of azureADDevice resources that can receive updates."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# updatableAssetGroup resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources that can receive updates.

Members are of the [azureADDevice](../resources/windowsupdates-azureADDevice.md) resource type. An **updatableAssetGroup** resource cannot be a member of another **updatableAssetGroup**.

Inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List updatableAssetGroup resources](../api/windowsupdates-updates-list-updatableassets-updatableassetgroup.md)|[microsoft.graph.windowsUpdates.updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) collection|Get a list of the [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) objects and their properties.|
|[Create updatableAssetGroup](../api/windowsupdates-updates-post-updatableassets-updatableassetgroup.md)|[microsoft.graph.windowsUpdates.updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md)|Create a new [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.|
|[Get updatableAssetGroup](../api/windowsupdates-updatableassetgroup-get.md)|[microsoft.graph.windowsUpdates.updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md)|Read the properties and relationships of an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.|
|[Delete updatableAssetGroup](../api/windowsupdates-updatableassetgroup-delete.md)|None|Deletes an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.|
|[Add members](../api/windowsupdates-updatableassetgroup-addmembers.md)|None|Add members to an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Add members (by ID)](../api/windowsupdates-updatableassetgroup-addmembers.md)|None|Add members to an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Remove members](../api/windowsupdates-updatableassetgroup-removemembers.md)|None|Remove members from an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Remove members (by ID)](../api/windowsupdates-updatableassetgroup-removemembers.md)|None|Remove members from an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[List members](../api/windowsupdates-updatableassetgroup-list-members.md)|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Get the [updatableAsset](../resources/windowsupdates-updatableasset.md) resources from the members navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the group. Key. Not nullable. Read-only. Returned by default. Inherited from [updatableAsset](../resources/windowsupdates-updatableasset.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Members of the group. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAssetGroup",
  "baseType": "microsoft.graph.windowsUpdates.updatableAsset",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
  "id": "String (identifier)"
}
```

