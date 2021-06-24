---
title: "accessReviewInstance: batchRecordDecisions"
description: "Enables reviewers to review all accessReviewInstanceDecisionItems in batches."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: batchRecordDecisions
Namespace: microsoft.graph

Enables reviewers to review all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in batches by using **principalId**, **resourceId**, or neither.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|AccessReview.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/batchRecordDecisions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md).

The following table lists the properties that you can use to review [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects.

|Parameter|Type|Description|
|:---|:---|:---|
|decision|String|Access decision for the entity being reviewed. Possible values are: `Approve`, `Deny`, `NotReviewed`, `DontKnow`. Required.|
|justification|String|Context of the review provided to admins. Required if **justificationRequiredOnApproval** of the settings property of the **accessReviewScheduleDefinition** is `true` .|
|principalId|String|If supplied, all the **accessReviewInstanceDecisionItems** with matching **principalId** values will be reviewed in this batch. If not supplied, all **accessReviewInstanceDecisionItems** will be reviewed.|
|resourceId|String|If supplied, all the **accessReviewInstanceDecisionItems** with matching **resourceId** will be reviewed in this batch. If not supplied, all **accessReviewInstanceDecisionItems** will be reviewed.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accessreviewinstance_batchrecorddecisions"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/e6cafba0-cbf0-4748-8868-0810c7f4cc06/instances/1234fba0-cbf0-6778-8868-9999c7f4cc06/batchRecordDecisions
Content-type: application/json

{
  "decision": "Approve",
  "justification": "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team",
  "resourceId": "a5c51e59-3fcd-4a37-87a1-835c0c21488a"
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
