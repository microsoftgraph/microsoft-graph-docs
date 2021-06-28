---
title: "accessReviewInstanceDecisionItem resource type"
description: "Represents a decision on an accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

Represents an Azure AD [access review](accessreviewsv2-root.md) decision on an instance of a review. This decision represents the determination of an identity's access to a resource for a given [accessReviewInstance](accessreviewinstance.md).

Each decision item is system-generated based off of the parent [accessReviewInstance](accessreviewinstance.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[Get accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Update the properties of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Returns the decision items for which the calling user is the reviewer.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessReviewId|String|The identifier of the accessReviewInstance parent. Supports `$select`. Read-only.|
|appliedBy|[userIdentity](../resources/useridentity.md)|The identifier of the user who applied the decision. Read-only.|
|appliedDateTime|DateTimeOffset|The timestamp when the approval decision was applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.  Supports `$select`. Read-only.|
|applyResult|String|The result of applying the decision. Possible values: `New`, `AppliedSuccessfully`, `AppliedWithUnknownFailure`, `AppliedSuccessfullyButObjectNotFound` and `ApplyNotSupported`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only.|
|decision|String|Result of the review. Possible values: `Approve`, `Deny`, `NotReviewed`, or `DontKnow`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). |
|id|String| The identifier of the decision. Inherited from [entity](../resources/entity.md). Supports `$select`. Read-only.|
|justification|String|Justification left by the reviewer when they made the decision.|
|principal|[identity](../resources/identity.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is "Bob" and the resource is "Sales". Principals can be of two types - userIdentity and servicePrincipalIdentity. Supports `$select`. Read-only.|
|principalLink|String|A link to the principal object. For example, `https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9`. Read-only.|
|recommendation|String|A system-generated recommendation for the approval decision based off last interactive sign-in to tenant. Recommend approve if sign-in is within thirty days of start of review. Recommend deny if sign-in is greater than thirty days of start of review. Recommendation not available otherwise. Possible values: `Approve`, `Deny`, or `NoInfoAvailable`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only.|
|resource|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is Bob and the resource is "Sales". Resources can be of multiple types. See [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md). Read-only.|
|resourceLink|String|A link to the resource. For example, "https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8". Supports `$select`. Read-only.|
|reviewedBy|[userIdentity](../resources/useridentity.md)| The identifier of the reviewer. Supports `$select`. Read-only.|
|reviewedDateTime|DateTimeOffset| The timestamp when the review decision occurred. Supports `$select`. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
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
  "principal": {
    "@odata.type": "microsoft.graph.identity"
  },
  "principalLink": "String",
  "resource": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  },
  "resourceLink": "String"
}
```
