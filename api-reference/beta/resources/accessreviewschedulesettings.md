---
title: "accessReviewScheduleSettings resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScheduleSettings` represents the settings associated with an access review series."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScheduleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **accessReviewScheduleSettings** defines the settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| mailNotificationsEnabled|Boolean | Indicates whether emails are enabled or disabled. Default value is `false`.               |
| reminderNotificationsEnabled|Boolean  | Indicates whether reminders are enabled or disabled. Default value is `false`.  |
| justificationRequiredOnApproval|Boolean | Indicates whether reviewers are required to provide justification with their decision. Default value is `false`. |
| defaultDecisionEnabled|Boolean | Indicates whether the default decision is enabled or disabled when reviewers do not respond. Default value is `false`. |
| defaultDecision|String | Decision chosen if `defaultDecisionEnabled` is enabled. Can be one of `Approve`, `Deny`, or `Recommendation`. |
| instanceDurationInDays|Int32 | Duration of each recurrence of review (`accessReviewInstance`) in number of days. |
| recurrence|[patternedRecurrence](../resources/patternedrecurrence.md) | Detailed settings for recurrence using the standard Outlook recurrence object. Only `weekly` and `absoluteMonthly` on **recurrencePattern** are supported. Use the property **startDate** on **recurrenceRange** to determine the day the review starts. |
| autoApplyDecisionsEnabled|Boolean | Indicates whether decisions are automatically applied. When set to `false`, a user must apply the decisions manually once the reviewer completes the access review. When set to `true`, decisions are applied automatically after the access review instance duration ends, whether or not the reviewers have responded. Default value is `false`. |
| applyActions|[accessReviewApplyAction](../resources/accessreviewapplyaction.md) collection | Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. See [accessReviewApplyAction](accessreviewapplyaction.md). |
| recommendationsEnabled|Boolean | Indicates whether decision recommendations are enabled/disabled. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleSettings",
  "mailNotificationsEnabled": "Boolean",
  "reminderNotificationsEnabled": "Boolean",
  "justificationRequiredOnApproval": "Boolean",
  "defaultDecisionEnabled": "Boolean",
  "defaultDecision": "String",
  "instanceDurationInDays": "Integer",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "autoApplyDecisionsEnabled": "Boolean",
  "applyActions": [
    {
      "@odata.type": "microsoft.graph.removeAccessApplyAction"
    }
  ],
  "recommendationsEnabled": "Boolean"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewScheduleSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
