---
title: "accessReviewInstanceDecisionItemResource resource type"
description: "Represents the resource associated with the decision item."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemResource resource type

Namespace: microsoft.graph

Every decision item in an access review represents a principal's access to a resource. The accessReviewInstanceDecisionItemResource object represents the resource associated with the decision item.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Identifier of the resource|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
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
