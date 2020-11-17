---
title: "accessReviewApplyAction resource type"
description: "Represents the action to take on reviewed users after an access review instance is completed."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewApplyAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base class for apply actions in the [accessReviewScheduleSettings](accessreviewschedulesettings.md) of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). Supported derived types:

- **removeAccessApplyAction** is a derived type of accessReviewApplyAction that indicates removing access of an entity being reviewed upon completion of the review. This is the default type for the applyActions property in accessReviewScheduleSettings and does not need to be specified.

- **disableAndDeleteUserApplyAction** is a derived type of accessReviewApplyAction that indicates disabling and deleting the user being reviewed upon completion of the review. This is the non-default type and needs to specified in accessReviewScheduleSettings.

## Properties
None.

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewApplyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewApplyAction"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewApplyAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
