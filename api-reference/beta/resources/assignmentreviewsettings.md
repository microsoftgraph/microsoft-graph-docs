---
title: "assignmentReviewSettings resource type"
description: "The assignmentReviewSettings type, used for the accessReviewSettings property of an access package assignment policy, provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# assignmentReviewSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **accessReviewSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed.  

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isEnabled| Boolean | If true, access reviews are required for assignments from this policy. |
| recurrenceType | String | The interval for recurrence, such as `monthly` or `quarterly`. |
| reviewerType | String | Who should be asked to do the review, either `Self` or `Reviewers`. |
| startDateTime | DateTimeOffset | When the first review should start. |
| durationInDays | Int32 | The number of days to allow input from reviewers.|
| reviewers | [userSet](userset.md) collection | If the reviewerType is `Reviewers`, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of [singleUser](singleuser.md) and [groupMembers](groupmembers.md). |

## JSON representation


The following is a JSON representation of the access review settings property of a policy.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignmentReviewSettings"
}-->

```json
{
  "isEnabled": true,
  "recurrenceType": "quarterly",
  "reviewerType": "Self",
  "startDateTime": "2020-01-23T07:59:59.998Z",
  "durationInDays": 25,
  "reviewers": []
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "assignmentReviewSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


