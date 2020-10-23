---
title: "accessReviewDecision resource type"
description: "The accessReviewDecision represents an Azure AD access review decision of a particular entity's access."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewDecision resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](accessreviews-root.md) feature, the `accessReviewDecision` represents an Azure AD access review decision of a particular entity's access.  Within an access review, or an instance of a recurring access review, there is one `accessReviewDecision` per reviewed user.  For example, if a group has two guests and one non-guest as members, and an access review of guests is performed for that group, then there will be two access review decision objects.  If a reviewer changes their decision, or another reviewer overrides them, then the `accessReviewDecision` is updated.


## Methods

None.  Objects of this type are automatically created by the feature when an access review initializes, and cannot be deleted.  They can be retrieved from an access review using the [decisions](../api/accessreview-listdecisions.md) and [mydecisions](../api/accessreview-listmydecisions.md) relationships.

## Properties

This table illustrates the base properties of objects of this type. 

| Property                        | Type                         | Description                                                                                            |
| :------------------------------ | :-----------------------     | :----------------------------------------------------------------------------------------------------- |
| `id`                            |`String`                      | The id of the decision within the access review.                                                                                     |
| `accessReviewId`                |`String`                      | The feature-generated id of the access review.                                                                                       |
| `reviewedBy`                    |[userIdentity](useridentity.md)| The identity of the reviewer. If the recommendation was used as the review, the userPrincipalName is empty.                                                                                      |
| `reviewedDate`                  |`DateTimeOffset`              | The date and time the most recent review for this access right was supplied.                                                                         |
| `reviewResult`                  |`String`                      | The result of the review, one of `NotReviewed`, `Deny`, `DontKnow` or `Approve`.                                                                                    |
| `justification`                 |`String`                      | The reviewer's business justification, if supplied.                                                                         |
| `appliedBy`                     |[userIdentity](useridentity.md)| When the review completes, if the results were manually applied, the user identity of the user who applied the decision. If the review was auto-applied, the userPrincipalName is empty.                                                          |
| `appliedDateTime`               |`DateTimeOffset`              | The date and time when the review decision was applied.                                                          |
| `applyResult`                   |`String`                      | The outcome of applying the decision, one of `NotApplied`, `Success`, `Failed`, `NotFound` or `NotSupported`.                      |
| `accessRecommendation`          |`String`                      | The feature- generated recommendation shown to the reviewer, one of `Approve`, `Deny` or `NotAvailable`. |


In addition, additional properties may be present depending on the object type of the object possessing the access that was decided upon.  For example, if the access review decision is a particular user's group membership or application access, the user who is potentially going to have their access be removed is identified through these properties:

| Property                        | Type                         | Description                                                                                            |
| :------------------------------ | :-----------------------     | :----------------------------------------------------------------------------------------------------- |
| `userId`                            |`String`                      | The id of user whose access was reviewed.                                                                                    |
| `userDisplayName`                            |`String`                      | The display name of the user whose access was reviewed.                                                                                     |
| `userPrincipalName`                            |`String`                      | The user principal name of the user whose access was reviewed.                                                                                     |



## Relationships

None.  Objects of this type can be retrieved from an access review using the [decisions](../api/accessreview-listdecisions.md) and [mydecisions](../api/accessreview-listmydecisions.md) relationships of the [accessReview](accessreview.md) object.

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReview decisions](../api/accessreview-listdecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	Get the decisions of an accessReview.|
|[List my accessReview decisions](../api/accessreview-listmydecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	As a reviewer, get my decisions of an accessReview.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewDecision"
}-->

```json
{
"id": "string (identifier)",
"accessReviewId": "string (identifier)",
"reviewedBy": "microsoft.graph.userIdentity",
"reviewedDate": "string (timestamp)",
"reviewResult": "string",
"justification": "string",
"appliedBy": "microsoft.graph.userIdentity",
"appliedDateTime": "string (timestamp)",
"applyResult": "string",
"accessRecommendation": "string",
"userId": "string",
"userDisplayName": "string",
"userPrincipalName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewDecision resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


