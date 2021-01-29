---
title: "permissionGrantPolicy resource type"
description: "Specifies the conditions under which consent can be authorized."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# permissionGrantPolicy resource type

Namespace: microsoft.graph

A permission grant policy is used to specify the conditions under which consent can be granted.

A permission grant policy consists of a list of **includes** condition sets, and a list of **excludes** condition sets. For an event to match a permission grant policy, it must match *at least one* of the **includes** conditions sets, and *none* of the **excludes** condition sets.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List permission grant policies](../api/permissiongrantpolicy-list.md) | [permissionGrantPolicy](permissiongrantpolicy.md) collection | Retrieve a list of permissionGrantPolicy objects. |
|[Create permission grant policy](../api/permissiongrantpolicy-post-permissiongrantpolicies.md)| [permissionGrantPolicy](permissiongrantpolicy.md) | Creates a new permissionGrantPolicy object. |
|[Get permission grant policy](../api/permissiongrantpolicy-get.md) | [permissionGrantPolicy](permissiongrantpolicy.md) |Read properties and relationships of permissionGrantPolicy object.|
|[Update permission grant policy](../api/permissiongrantpolicy-update.md) | [permissionGrantPolicy](permissiongrantpolicy.md)  |Update permissionGrantPolicy object. |
|**Include condition sets**| | |
|[List include condition sets](../api/permissiongrantpolicy-list-includes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Get the condition sets which are *included* in this permission grant policy.|
|[Add include condition set](../api/permissiongrantpolicy-post-includes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) | Add a condition set which is *included* from this permission grant policy. |
|[Remove include condition set](../api/permissiongrantpolicy-delete-includes.md) | None | Remove a condition set which is *excluded* from this permission grant policy.|
|**Exclude condition sets**| | |
|[List exclude condition sets](../api/permissiongrantpolicy-list-excludes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Get the condition sets which are *excluded* in this permission grant policy.|
|[Add exclude condition set](../api/permissiongrantpolicy-post-excludes.md) |[permissionGrantConditionSet](permissiongrantconditionset.md) | Add a condition set which is *excluded* from this permission grant policy. |
|[Remove exclude condition set](../api/permissiongrantpolicy-delete-excludes.md) | None | Remove a condition set which is *excluded* from this permission grant policy.|

## Properties

| Property     | Type |Description|
|:---------------|:--------|:----------|
| id | String | The unique identifier for the permission grant policy. The **id** prefix `microsoft-` is reserved for built-in permission grant policies, and may not be used in a custom permission grant policy. Only letters, numbers, hyphens (`-`) and underscores (`_`) are allowed. Key. Not nullable. Required on create. Immutable. |
| displayName | String |The display name for the permission grant policy.|
| description |String| The description for the permission grant policy.|
| includes | [permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets which are *included* in this permission grant policy. Automatically expanded on `GET`.|
| excludes |[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets which are *excluded* in this permission grant policy. Automatically expanded on `GET`.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|includes|[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets which are *included* in this permission grant policy. This navigation is automatically expanded on GET. |
|excludes|[permissionGrantConditionSet](permissiongrantconditionset.md) collection| Condition sets which are *excluded* in this permission grant policy. This navigation is automatically expanded on GET. |

## JSON representation

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantPolicy"
}-->

```json
{
  "id": "string (identifier)",
  "displayName": "string",
  "description": "string",
  "includes": "collection(microsoft.graph.permissionGrantConditionSet)",
  "excludes": "collection(microsoft.graph.permissionGrantConditionSet)"
}
```
