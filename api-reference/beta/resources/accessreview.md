---
title: "accessReview resource type"
description: "In the Azure AD access reviews feature, the `accessReview` represents an access review.  "
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# accessReview resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](accessreviews-root.md) feature, the `accessReview` represents an access review.  


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get accessReview](../api/accessreview-get.md) |	[accessReview](accessreview.md) |	Get an access review with a specific id. |
|[Create accessReview](../api/accessreview-create.md) |	[accessReview](accessreview.md) |	Create a new accessReview. |
|[Delete accessReview](../api/accessreview-delete.md) |	None.	| Delete an accessReview. |
|[Update accessReview](../api/accessreview-update.md) |	[accessReview](accessreview.md)	| Update an accessReview. |
|[List accessReview reviewers](../api/accessreview-listreviewers.md) |		[userIdentity](useridentity.md) collection|	Get the reviewers of an accessReview. |
|[Add accessReview reviewer](../api/accessreview-addreviewer.md) |		None.	|	Add a reviewer to an accessReview. |
|[Remove accessReview reviewer](../api/accessreview-removereviewer.md) | None.	|	Remove a reviewer from an accessReview. |
|[List accessReview decisions](../api/accessreview-listdecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	Get the decisions of an accessReview.|
|[List my accessReview decisions](../api/accessreview-listmydecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	As a reviewer, get my decisions of an accessReview.|
|[Send accessReview reminder](../api/accessreview-sendreminder.md) |		None.	|	Send a reminder to the reviewers of an accessReview. |
|[Stop accessReview](../api/accessreview-stop.md) |		None.	|	Stop an accessReview. |
|[Reset accessReview decisions](../api/accessreview-reset.md) |		None.	|	Reset the decisions in an in-progress accessReview.|
|[Apply accessReview decisions](../api/accessreview-apply.md) |		None.	|	Apply the decisions from a completed accessReview.|

## Permissions

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                      |`String`                                                        | The feature-assigned unique identifier of an access review. |
| `displayName`             |`String`                                                        | The access review name. Required on create. |
| `startDateTime`           |`DateTimeOffset`                                                | The DateTime when the review is scheduled to be start.  This could be a date in the future.  Required on create. |
| `endDateTime`             |`DateTimeOffset`                                                | The DateTime when the review is scheduled to end. This must be at least one day later than the start date.  Required on create. |
| `status`                  |`String`                                                        | This read-only field specifies the current status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`,`InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. |
| `description`             |`String`                                                        | The description provided by the access review creator, to show to the reviewers. |
| `businessFlowTemplateId`  |`String`                                                        | The business flow template identifier. Required on create. |
| `reviewerType`            |`String`                                                        | The relationship type of reviewer to the target object, one of `self`, `delegate` or `entityOwners`. Required on create. | 
| `createdBy`               |[userIdentity](useridentity.md)                                 | The user who created this review. |
| `reviewedEntity`          |`microsoft.graph.identity`                                      | The object for which the access reviews is of the access rights assignments, such as the memberships of users to a group or assignments of users to an application. Required on create. | 
| `settings`                |`microsoft.graph.accessReviewSettings`             | The settings of an accessReview, see type definition below. |



## Relationships




| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `reviewers`               |[userIdentity](useridentity.md) collection                     | The collection of reviewers for an access review, if access review reviewerType is of type `delegate`. |
| `decisions`               |[accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for this access review. |
| `myDecisions`             |[accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for the caller, if the caller is a reviewer. |
| `instances`               |[accessReview](accessreview.md) collection         | The collection of access reviews instances past, present and future, if this object is a recurring access review. |

Whether there are relationships present on an object, depend upon whether the object is a one-time access review, the series of a recurring access review, or an instance of a recurring access review.

| Scenario | Has reviewers? | Has decisions and myDecisions? | Has instances? |
|:---------|:---------------|:---------------|:---------------|
|One-time access review|Yes | Yes, once started | No |
| Recurring access review | Yes | No | Yes |
| Instance of a recurring access review | Yes | Yes, once started | No |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
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
 "createdBy": "microsoft.graph.userIdentity",
 "reviewedEntity": "microsoft.graph.identity",
 "settings": "microsoft.graph.accessReviewSettings",
 "reviewers": "Collection(microsoft.graph.userIdentity)"
}

```

## The accessReviewSettings type

The `accessReviewSettings` provides additional settings when creating an access review, to control the feature behavior when starting an access review.  This type has the following properties: 

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `mailNotificationsEnabled`|`Boolean`                | Flag to indicate whether sending mails to reviewers and the review creator is enabled.                |
| `remindersEnabled`|`Boolean`       | Flag to indicate whether sending reminder emails to reviewers are enabled.       |
| `justificationRequiredOnApproval`|`Boolean` | Flag to indicate whether reviewers are required to provide a justification when reviewing access.|
| `activityDurationInDays`|`Int64` | The number of days of user activities to show to reviewers. |
| `autoReviewEnabled`|`Boolean` | Flag to indicate whether the feature should set a decision if the reviewer did not supply one, for use with auto-apply, is enabled. |
| `autoReviewSettings`|`microsoft.graph.autoReviewSettings` | Detailed settings for how the feature should set the review decision, for use with auto-apply, described below. |
| `recurrenceSettings`|`microsoft.graph.accessReviewRecurrenceSettings` | Detailed settings for recurrence, described below. |
| `autoApplyReviewResultsEnabled`|`Boolean` | Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must subsequently apply the change of the access review after the access review is completed. |
| `accessRecommendationsEnabled`|`Boolean` | Flag to indicate whether showing recommendations to reviewers is enabled. |



## The autoReviewSettings type

The `autoReviewSettings` is embedded within the access review settings, and specifies the behavior for the feature when an access review completes.  The type has one property, `notReviewedResult`.

| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| `notReviewedResult`          |`String`  | Must be one of `Approve`, `Deny`, or `Recommendation`. |


## The accessReviewRecurrenceSettings type

The `accessReviewRecurrenceSettings` is embedded within the access review settings, and specifies that the access review recurs at regular intervals.  This type has the following properties:

| Property                     | Type                                                                                                          | Description |
| :--------------------------- | :------------------------------------------------------------------------------------------------------------ | :---------- |
| `recurrenceType`|`String`    | The recurrence interval, which must be one of `onetime`, `weekly`, `monthly`, `quarterly` or `annual`.                                                                   |
| `recurrenceEndType`|`String` | How the recurrence will end. It can be one of `Never`,that there is no explicit end of the recurrence series, `Endby`, that the recurrence ends at a certain date, and `occurrences`, that the series ends after certain number of instances of the review have completed. |
| `durationInDays`|`Int32`     | The duration in days for recurrence.                                                                              |
| `recurrenceCount`|`Int32`    | The count of recurrences, if the value of `recurrenceEndType` is `occurrences`.                                                        |



<!-- {
  "type": "#page.annotation",
  "description": "accessReview resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
