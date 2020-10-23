---
title: "accessReviewSettings resource type"
description: "Provides additional settings when creating an access review."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides additional settings when creating an access review, to control the feature behavior when starting an access review.

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| mailNotificationsEnabled | Boolean | Indicates whether sending mails to reviewers and the review creator is enabled. |
| remindersEnabled | Boolean | Indicates whether sending reminder emails to reviewers is enabled. |
| justificationRequiredOnApproval | Boolean | Indicates whether reviewers are required to provide a justification when reviewing access. |
| activityDurationInDays | Int64 | The number of days of user activities to show to reviewers. |
| autoReviewEnabled | Boolean | Indicates whether a decision should be set if the reviewer did not supply one. For use when auto-apply is enabled. If you don't want to have a review decision recorded unless the reviewer makes an explicit choice, set it to `false`.|
| autoReviewSettings | [autoReviewSettings](autoreviewsettings.md) | Detailed settings for how the feature should set the review decision. For use when auto-apply is enabled. |
| recurrenceSettings | [accessReviewRecurrenceSettings](accessreviewrecurrencesettings.md) | Detailed settings for recurrence. |
| autoApplyReviewResultsEnabled | Boolean | Indicates whether the auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must, after the review completes, apply the access review. |
| accessRecommendationsEnabled | Boolean | Indicates whether showing recommendations to reviewers is enabled. |

## JSON representation
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewSettings"
}-->
```json
{
  "mailNotificationsEnabled": true,
  "remindersEnabled": true,  
  "justificationRequiredOnApproval": true,
  "activityDurationInDays": 1024,
  "autoReviewEnabled": false,
  "autoReviewSettings": {"@odata.type": "microsoft.graph.autoReviewSettings"},
  "recurrenceSettings": {"@odata.type": "microsoft.graph.accessReviewRecurrenceSettings"},
  "autoApplyReviewResultsEnabled": false,
  "accessRecommendationsEnabled": false
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "accessReviewSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->