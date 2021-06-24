---
title: "accessReviewInstance: acceptRecommendations"
description: "Allows the acceptance of recommendations on decisions for an access review instance that has not been reviewed by the calling user who is a reviewer."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: acceptRecommendations

Namespace: microsoft.graph

Allows the acceptance of recommendations on all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects that have not been reviewed on an [accessReviewInstance](../resources/accessreviewinstance.md) object for which the calling user is a reviewer.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/acceptRecommendations
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
  "name": "accessreviewinstance_acceptrecommendations"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/e6cafba0-cbf0-4748-8868-0810c7f4cc06/instances/1234fba0-cbf0-5678-8868-0810c7f91006/acceptRecommendations
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
