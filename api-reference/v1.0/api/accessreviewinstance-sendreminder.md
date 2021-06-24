---
title: "accessReviewInstance: sendReminder"
description: "Sends a reminder to the reviewers of a currently active accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: sendReminder
Namespace: microsoft.graph

Send a reminder to the reviewers of an active [accessReviewInstance](../resources/accessreviewinstance.md).

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
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/sendReminder
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
  "name": "accessreviewinstance_sendreminder"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/8564a649-4f67-4e09-88e7-55def6530e88/instances/1234a649-4f67-1234-88e7-55def6530e88/sendReminder
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
