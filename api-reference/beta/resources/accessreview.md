---
title: "accessReview resource type"
description: "In the Azure AD access reviews feature, the `accessReview` represents an access review.  "
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD [access review](accessreviews-root.md).  

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviews](../api/accessreview-list.md) | [accessReview](accessreview.md) collection | List accessReviews for a businessFlowTemplate. |
|[Get accessReview](../api/accessreview-get.md) |	[accessReview](accessreview.md) |	Get an access review with a specific id. |
|[Create accessReview](../api/accessreview-create.md) |	[accessReview](accessreview.md) |	Create a new accessReview. |
|[Update accessReview](../api/accessreview-update.md) |	[accessReview](accessreview.md)	| Update an accessReview. |
|[Delete accessReview](../api/accessreview-delete.md) |	None.	| Delete an accessReview. |
|[List accessReview reviewers](../api/accessreview-listreviewers.md) | [userIdentity](useridentity.md) collection|	Get the reviewers of an accessReview. |
|[Add accessReview reviewer](../api/accessreview-addreviewer.md) | None.	|	Add a reviewer to an accessReview. |
|[Remove accessReview reviewer](../api/accessreview-removereviewer.md) | None. |	Remove a reviewer from an accessReview. |
|[List accessReview decisions](../api/accessreview-listdecisions.md) | [accessReviewDecision](accessreviewdecision.md) collection |	Get the decisions of an accessReview. |
|[List my accessReview decisions](../api/accessreview-listmydecisions.md) | [accessReviewDecision](accessreviewdecision.md) collection | As a reviewer, get my decisions of an accessReview. |
|[Send accessReview reminder](../api/accessreview-sendreminder.md) | None. | Send a reminder to the reviewers of an accessReview. |
|[Stop accessReview](../api/accessreview-stop.md) | None. |	Stop an accessReview. |
|[Reset accessReview decisions](../api/accessreview-reset.md) | None.	|	Reset the decisions in an in-progress accessReview. |
|[Apply accessReview decisions](../api/accessreview-apply.md) | None. |	Apply the decisions from a completed accessReview. |

## Properties

| Property | Type	| Description |
|:-------- |:---- |:----------- |
| id | String | The feature-assigned unique identifier of an access review. |
| displayName | String | The access review name. Required on create. |
| startDateTime | DateTimeOffset | The DateTime when the review is scheduled to be start.  This could be a date in the future.  Required on create. |
| endDateTime | DateTimeOffset | The DateTime when the review is scheduled to end. This must be at least one day later than the start date.  Required on create. |
| status | String | This read-only field specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`,`InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. |
| description | String | The description provided by the access review creator, to show to the reviewers. |
| businessFlowTemplateId | String | The business flow template identifier. Required on create.  This value is case sensitive. |
| reviewerType | String | The relationship type of reviewer to the target object, one of `self`, `delegated` or `entityOwners`. Required on create. | 
| createdBy | [userIdentity](useridentity.md) | The user who created this review. |
| reviewedEntity | [identity](identity.md) | The object for which the access reviews is reviewing the access rights assignments. This can be the group for the review of memberships of users in a group, or the app for a review of assignments of users to an application. Required on create. | 
| settings | [accessReviewSettings](accessreviewsettings.md) | The settings of an accessReview, see type definition below. |

## Relationships

| Relationship | Type	| Description |
|:------------ |:---- |:----------- |
| reviewers | [userIdentity](useridentity.md) collection | The collection of reviewers for an access review, if access review reviewerType is of type `delegated`. |
| decisions | [accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for this access review. |
| myDecisions | [accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for the caller, if the caller is a reviewer. |
| instances | [accessReview](accessreview.md) collection | The collection of access reviews instances past, present and future, if this object is a recurring access review. |

Whether these relationships are present on an object, depends upon whether the object is a one-time access review, the series of a recurring access review, or an instance of a recurring access review.

| Scenario | Has reviewers? | Has decisions and myDecisions? | Has instances? |
|:-------- |:-------------- |:------------------------------ |:-------------- |
| One-time access review | Yes | Yes, once started | No |
| Recurring access review | Yes | No | Yes |
| Instance of a recurring access review | Yes | Yes, once started | No |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReview"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "startDateTime": "string (timestamp)",
 "endDateTime": "string (timestamp)",
 "status": "string",
 "description": "string",
 "businessFlowTemplateId": "string (identifier)",
 "reviewerType": "string",
 "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
 "reviewedEntity": {"@odata.type": "microsoft.graph.identity"},
 "settings": {"@odata.type": "microsoft.graph.accessReviewSettings"},
 "reviewers": [{"@odata.type": "microsoft.graph.userIdentity"}]
}

```

<!--
{
  "type": "#page.annotation",
  "description": "accessReview resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


