---
title: "accessReviewScope resource type"
description: "Represents the entities that need to be reviewed in an access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScope resource type

Namespace: microsoft.graph

The **accessReviewScope** defines what entities will be reviewed in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). It is an abstract type that is inherited by [accessReviewQueryScope](accessreviewqueryscope.md), [principalResourceMembershipsScope](principalresourcemembershipsscope.md) and [accessReviewReviewerScope](accessreviewreviewerscope.md). 

For **scope** property on an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) see [accessReviewQueryScope](accessreviewqueryscope.md) and [principalResourceMembershipsScope](principalresourcemembershipsscope.md).

For **reviewers** property on an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) see [accessReviewReviewerScope](accessreviewreviewerscope.md).

Specifying the OData type in the **scope** is highly recommended for all types but required for [principalResourceMembershipsScope](principalresourcemembershipsscope.md) and [accessReviewInactiveUserQueryScope](../resources/accessreviewinactiveusersqueryscope.md).

## Properties
None.


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScope"
}
```
