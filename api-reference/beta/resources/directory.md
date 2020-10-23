---
title: "directory resource type (deleted items)"
description: ". Deleted items will remain available to restore for up to 30 days. After 30 days, the items are permanently deleted."
localization_priority: Normal
author: "keylimesoda"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# directory resource type (deleted items)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a deleted item in the directory. When an item is deleted, it is added to the deleted items "container". Deleted items will remain available to restore for up to 30 days. After 30 days, the items are permanently deleted.

Currently, deleted items functionality is only supported for the [application](application.md), [group](group.md) and [user](user.md) resources.

## Methods

| Method         | Return Type | Description |
|:---------------|:------------|:------------|
|[Get deleted item](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Gets the properties of a deleted item. |
|[Restore deleted item](../api/directory-deleteditems-restore.md) |[directoryObject](directoryobject.md)| Restores a recently deleted item. |
|[List deleted items](../api/directory-deleteditems-list.md) |[directoryObject](directoryobject.md) collection| Gets a list of recently deleted items. |
|[Permanently delete an item](../api/directory-deleteditems-delete.md) | None | Permanently deletes an item. |
|[List deleted items owned by a user](../api/directory-deleteditems-user-owned.md) | [directoryObject](directoryobject.md) collection | Lists directory items owned by a user. |
|[List featureRolloutPolicies](../api/directory-list-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) collection | Retrieve a list of featureRolloutPolicy objects. |
|[Create featureRolloutPolicy](../api/directory-post-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Create a new featureRolloutPolicy object. |
| [Get featureRolloutPolicy](../api/featurerolloutpolicy-get.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Retrieve the properties and relationships of featurerolloutpolicy object. |
| [Update featureRolloutPolicy](../api/featurerolloutpolicy-update.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Update the properties of featurerolloutpolicy object. |
| [Delete featureRolloutPolicy](../api/featurerolloutpolicy-delete.md) | None | Delete a featureRolloutPolicy object. |

## Properties
| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| A unique identifier for the object; for example, 12345678-9abc-def0-1234-56789abcde. Key. Not nullable. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|deleteditems|[directoryObject](directoryobject.md) collection| Recently deleted items. Read-only. Nullable.|
|featureRolloutPolicies|[featureRolloutPolicy](featurerolloutpolicy.md) collection| Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directory"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


