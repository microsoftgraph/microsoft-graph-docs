---
title: "accessReviewPolicy resource type"
description: "Access reviews policy is a singleton that enables organizations to manage directory-level access review policy."
author: "kafen"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Access review policy is a singleton that enables administrators to manage directory-level access review policies. For example, administrators can use the access review policy to enable and disable the ability of group owners to create access reviews on groups that they own.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get accessReviewPolicy](../api/accessreviewpolicy-get.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Read the properties and relationships of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|
|[Update accessReviewPolicy](../api/accessreviewpolicy-update.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Update the properties of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for this policy. Read-only.|
|displayName|String|Display name for this policy. Read-only.|
|isGroupOwnerManagementEnabled|Boolean|If `true`, group owners can create and manage access reviews on groups they own.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewPolicy",
  "displayName": "Access Review Policy",
  "description": "Policy contains directory-level access review settings.",
  "isGroupOwnerManagementEnabled": false
}
```
