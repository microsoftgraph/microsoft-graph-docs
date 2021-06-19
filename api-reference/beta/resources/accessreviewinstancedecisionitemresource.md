---
title: "accessReviewInstanceDecisionItemResource resource type"
description: "Every decision item in an access review represents a principal's access to a resource. accessReviewInstanceDecisionItemResource represents the resource associated with the decision item."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Every decision item in an access review represents a principal's access to a resource. accessReviewInstanceDecisionItemResource represents the resource associated with the decision item. accessReviewInstanceDecisionItemResource is an open type which allows for additional properties to be passed in.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Resource ID|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String"
}
```
