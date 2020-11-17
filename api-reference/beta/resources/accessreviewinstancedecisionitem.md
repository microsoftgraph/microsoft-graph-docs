---
title: "accessReviewInstanceDecisionItem resource type"
description: "Represents a decision on a user's access on an accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD [access review](accessreviewsv2-root.md) decision on an instance of a review. This decision represents the determination of a user or service principal's access for a given [access review instance](accessreviewinstance.md).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Lists every accessReviewInstanceDecisionItem for a specific accessReviewInstance. |
|[List accessReviewInstanceDecisionItems pending approval](../api/accessreviewinstancedecisionitem-listpendingapproval.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection. | Get all accessReviewInstanceDecisionItems assigned to the calling user, for a specific accessReviewInstance. |
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md) | None. | For any accessReviewInstanceDecisionItems that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |

## Properties
| Property | Type |  Description |
| :---------------| :---- | :---------- |
| id | String | The identifier of the decision. |
| accessReviewId | String | The identifier of the accessReviewInstance parent. |
| reviewedBy | [userIdentity](useridentity.md) | The identifier of the reviewer. |
| reviewedDateTime | DateTimeOffset | The DateTime when the review occurred. |
| decision | String | Result of the review. Possible values: `Approve`, `Deny`, `NotReviewed`, or `DontKnow`. |
| justification | String | The review decision justification. |
| appliedBy | [userIdentity](useridentity.md) | The identifier of the user who applied the decision. |
| appliedDateTime | DateTimeOffset | The DateTime when the approval decision was applied. |
| applyResult | String | The result of applying the decision. Possible values: `NotApplied`, `Success`, `Failed`, `NotFound`, or `NotSupported`. |
| recommendation | String | A system-generated recommendation for the approval decision. Possible values: `Approve`, `Deny`, or `NotAvailable`.  |
| target | [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md)  | The target of this specific decision. Decision targets can be of different types – each one with its own specific properties. See [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md). |

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| instance |[accessReviewInstance](accessreviewinstance.md) | There is exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "baseType": "",
  "openType": true
}
-->

```json
{
 "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
 "id": "string (identifier)",
 "accessReviewId": "string",
 "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
 },
 "reviewedDateTime": "string (timestamp)",
 "decision": "string",
 "justification": "string",
 "appliedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
 "appliedDateTime": "DateTimeOffset",
 "applyResult": "string",
 "recommendation": "string",
 "target": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstanceDecisionItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
