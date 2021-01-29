---
title: "accessReviewScheduleSettings resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScheduleSettings` represents the settings associated with an access review series."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewScheduleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewScheduleSettings** defines the settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| mailNotificationsEnabled|Boolean | Flag to indicate whether emails are enabled/disabled.                |
| reminderNotificationsEnabled|Boolean  | Flag to indicate whether reminders are enabled/disabled.   |
| justificationRequiredOnApproval|Boolean | Flag to indicate whether reviewers are required to provide justification with their decision. |
| defaultDecisionEnabled|Boolean | Flag to indicate whether default decision is enabled/disabled when reviewers do not respond. |
| defaultDecision|String | Decision chosen if `defaultDecisionEnabled` is enabled. Can be one of "Approve", "Deny", or "Recommendation". |
| instanceDurationInDays|Int32 | Duration of each recurrence of review (`accessReviewInstance`) in number of days. |
| recurrence|[patternedRecurrence](../resources/patternedrecurrence.md) | Detailed settings for recurrence. Using standard Outlook recurrence object.  |
| autoApplyDecisionsEnabled|Boolean | Flag to indicate whether auto-apply feature is enabled. |
| applyActions|[accessReviewApplyAction](../resources/accessreviewapplyaction.md) collection | Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. See [accessReviewApplyAction](accessreviewapplyaction.md). |
| recommendationsEnabled|Boolean | Flag to indicate whether decision recommendations are enabled/disabled. |

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
