---
title: "accessReviewReviewerScope resource type"
description: "Represents who will review an access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewReviewerScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The accessReviewReviewerScope defines who will review instances of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). It is an OData query that allows reviewers to be specified both as a static list of users (that is, specific users, group owners, and group members) or dynamically in which every user is reviewed by their manager or by group owners. To create a self-review (where users review their own access), do not provide reviewers on [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) creation.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | The query specifying who will be the reviewer. See table for examples. |
| queryType | String | The type of query. Examples include `MicrosoftGraph` and `ARM`. |
| queryRoot | String | In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query, for example, `./manager`, is specified. Possible value: `decisions`. |

For more about configuration options for **reviewers**, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept).


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewReviewerScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewReviewerScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewReviewerScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
