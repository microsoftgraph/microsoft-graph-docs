---
title: "accessReviewInstanceDecisionItemUserTarget resource type"
description: "Represents the target of a review as  a user."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemUserTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents a user identity under review in an [accessReviewInstance](accessreviewinstance.md).

Inherits from [accessReviewInstanceDecisionItemTarget](../resources/accessreviewinstancedecisionitemtarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| userDisplayName | String | The name of user. |
| userId | String | The identifier of user. |
| userPrincipalName | String | The user principal name. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemUserTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String"
}
```
