---
title: "accessReviewScheduleDefinition resource type"
description: "Represents an access review or access review series."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents the scheduling of an Azure AD [access review](accessreviewsv2-root.md). 

An accessReviewScheduleDefinition contains a list of [accessReviewInstance](accessreviewinstance.md) objects. Each recurrence of the schedule definition creates an instance. Instances also represent each unique resource being reviewed. If a schedule definition reviews multiple resources (including multiple groups), each resource has a unique instance per each recurrence. In the case of a one-time review, only one instance is created per resource.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinitions](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every accessReviewScheduleDefinition. Does not include associated accessReviewInstance objects in the results. |
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an accessReviewScheduleDefinition with a specified **id**. Does not include associated accessReviewInstance objects in the results. |
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-post.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new accessReviewScheduleDefinition. |
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an accessReviewScheduleDefinition with a specified **id**. |
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an accessReviewScheduleDefinition with a specified **id**. |
|[filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Retrieves all definitions for which the calling user is a reviewer on one or more instance.|

## Properties
| Property | Type | Description |
| :------------------| :-------------- | :---------- |
| id | String | The feature-assigned unique identifier of an access review. Supports `$select`. Read-only.|
| displayName | String   | Name of the access review series. Supports `$select` and `$orderBy`. Required on create. |
| createdDateTime  |DateTimeOffset  | Timestamp when the access review series was created. Supports `$select`. Read-only. |
| lastModifiedDateTime | DateTimeOffset   | Timestamp when the access review series was last modified. Supports `$select`. Read-only.|
| status  |String   | This read-only field specifies the status of an access review. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`.  <br>Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only. |
| descriptionForAdmins  |string  |  Description provided by review creators to provide more context of the review to admins. Supports `$select`. |
| descriptionForReviewers |string | Description provided  by review creators to provide more context of the review to reviewers. Reviewers will see this description in the email sent to them requesting their review. Supports `$select`. |
| createdBy  |[userIdentity](../resources/useridentity.md)  | User who created this review. Read-only. |
| scope  |[accessReviewScope](../resources/accessreviewscope.md)  | Defines scope of resources to review. For supported scopes, see [accessReviewScope](accessreviewscope.md). Required on create. Supports `$select` and `$filter` (`contains` only). For examples of options for configuring scope, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept). |
| instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)  | This property is required when scoping a review to guest users' access across all Microsoft 365 groups and determines which Microsoft 365 groups are reviewed. Each group will become a unique **accessReviewInstance** of the access review series.  For supported scopes, see [accessReviewScope](accessreviewscope.md). Supports `$select`. For examples of options for configuring instanceEnumerationScope, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept). | 
| settings  |[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)| The settings for an access review series, see type definition below. Supports `$select`. Required on create. |
| reviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of access review scopes is used to define who are the reviewers. The reviewers property is only updatable if individual users are assigned as reviewers. Required on create. Supports `$select`. For examples of options for assigning reviewers, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept). |
| fallbackReviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. See [accessReviewReviewerScope](accessreviewreviewerscope.md). Replaces backupReviewers. Supports `$select`. |
| instances |[accessReviewInstance](../resources/accessreviewinstance.md) collection|  Set of access reviews instances for this access review series. Access reviews that do not recur will only have one instance; otherwise, there is an instance for each recurrence. |
| backupReviewers (deprecated) |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist.  Supports `$select`. <br>**Note:** This property has been replaced by **fallbackReviewers**. However, specifying either **backupReviewers** or **fallbackReviewers** automatically populates the same values to the other property. |
| additionalNotificationRecipients   |[accessReviewNotificationRecipientItem](../resources/accessReviewNotificationRecipientItem.md) collection| Defines the list of additional users or group members to be notified of the access review progress. |

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `instances`               |[accessReviewInstance](accessreviewinstance.md) collection         | If the `accessReviewScheduleDefinition` is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the `accessReviewScheduleDefinition`. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```
