---
title: "accessReviewInactiveUsersQueryScope resource type"
description: "A type of accessReviewQueryScope that allows only inactive users to be selected in the scope of an access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInactiveUsersQueryScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

A type of [accessReviewQueryScope](../resources/accessreviewqueryscope.md) that allows only inactive users to be selected in the scope of an access review.

Inherits from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactiveDuration|Duration|Defines the length of the duration period of inactivity. Inactivity is based on the last sign in date of the user.|
|query|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|
|queryRoot|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|
|queryType|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|

### Supported queries for accessReviewInactiveUserQueryScope as scope
The same queries supported on [accessReviewScope](../resources/accessreviewscope.md) are also supported on accessReviewInactiveUserQueryScope. The following are the queries. They are supported as the `scope` property in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md).

|Scenario| Query |
|--|--|
| Review all inactive guest users assigned to a group | /groups/{group ID}/transitiveMembers/microsoft.graph.user/?\$count=true&$filter=(userType eq 'Guest') |
| Review all inactive users assigned to a group | /groups/{group ID}/transitiveMembers |
| Review all inactive guest users assigned to all groups | ./members/microsoft.graph.user/?\$count=true&$filter=(userType eq 'Guest') |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInactiveUsersQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String",
  "inactiveDuration": "String (duration)"
}
```
