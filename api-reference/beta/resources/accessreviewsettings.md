---
title: "accessReviewSettings resource type"
description: ""
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: ""
---

# accessReviewSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


## Properties
|Property|Type|Description|
|:---|:---|:---|
| mailNotificationsEnabled | boolean |  |
| remindersEnabled | boolean |  |
| justificationRequiredOnApproval | boolean |  |
| recurrenceSettings | accessReviewRecurrenceSettings |  |
| autoReviewEnabled | boolean |  |
| activityDurationInDays | Int32 |  |
| autoReviewSettings | autoReviewSettings |  |
| autoApplyReviewResultsEnabled | boolean |  |
| accessRecommendationsEnabled | boolean |  |


## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewSettings"
}-->
``` json
{
    "mailNotificationsEnabled":"boolean",
    "remindersEnabled":"boolean",
    "justificationRequiredOnApproval":"boolean",
    "recurrenceSettings":"microsoft.graph.accessReviewRecurrenceSettings",
    "autoReviewEnabled":"boolean",
    "activityDurationInDays":"Int32",
    "autoReviewSettings":"microsoft.graph.autoReviewSettings",
    "autoApplyReviewResultsEnabled":"boolean",
    "accessRecommendationsEnabled":"boolean"
}
```



