---
title: "accessReviewInstanceDecisionItem resource type"
description: "Represents a decision on a user's access on an accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

>[!NOTE]
>The property `target` will be deprecated in v1.0 and replaced by properties `principal` and `resource`.

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
| reviewedDateTime | DateTimeOffset | The timestamp when the review occurred. |
| decision | String | Result of the review. Possible values: `Approve`, `Deny`, `NotReviewed`, or `DontKnow`. |
| justification | String | The review decision justification. |
| appliedBy | [userIdentity](useridentity.md) | The identifier of the user who applied the decision. |
| appliedDateTime | DateTimeOffset | The timestamp when the approval decision was applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
| applyResult | String | The result of applying the decision. Possible values: `NotApplied`, `Success`, `Failed`, `NotFound`, or `NotSupported`. |
| recommendation | String | A system-generated recommendation for the approval decision. Possible values: `Approve`, `Deny`, or `NotAvailable`.  |
| target | [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md)  | The target of this specific decision. Decision targets can be of different types – each one with its own specific properties. See [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md). |
|principal|[identity](../resources/identity.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is "Bob" and the resource is "Sales". Principals can be of two types - userIdentity and servicePrincipalIdentity.|
|resource|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is Bob and the resource is "Sales". Resources can be of multiple types. See [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|

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
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
  "id": "String (identifier)",
  "accessReviewId": "String",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "reviewedDateTime": "String (timestamp)",
  "decision": "String",
  "justification": "String",
  "appliedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "appliedDateTime": "String (timestamp)",
  "applyResult": "String",
  "recommendation": "String",
  "target": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
  },
  "principal": {
    "@odata.type": "microsoft.graph.identity"
  },
  "resource": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
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
