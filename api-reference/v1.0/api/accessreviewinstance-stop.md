---
title: "accessReviewInstance: stop"
description: "Stop a currently active accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: stop
Namespace: microsoft.graph

Stop a currently active [accessReviewInstance](../resources/accessreviewinstance.md). After the access review instance stops, the instance status is marked as `Completed`, the reviewers can no longer give input, and the access review decisions are applied.

Stopping an instance will not stop future instances. To prevent a recurring access review from starting future instances, [update the schedule definition](accessreviewscheduledefinition-update.md) to change its scheduled end date.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stop
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accessreviewinstance_stop"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/8564a649-4f67-4e09-88e7-55def6530e88/instances/1234a649-4f67-1234-88e7-55def6530e88/stop
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
