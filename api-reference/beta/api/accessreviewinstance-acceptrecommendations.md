---
title: "accessReviewInstance: acceptRecommendations"
description: "Allows the acceptance of recommendations on all not reviewed decisions on an access review instance` that they are the reviewer on. "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# accessReviewInstance: acceptRecommendations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows the acceptance of recommendations on all not reviewed [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) on an [accessReviewInstance](../resources/accessreviewinstance.md) that they are the reviewer on.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
| Delegated (personal Microsoft account)| Not supported. |

The signed-in user must also be a reviewer on the accessReviewInstance.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/pendingAccessReviewInstances/{instance-id}/acceptRecommendations
```
## Request headers
None.

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.

## Examples
### Request

<!-- {
  "blockType": "request",
  "name": "acceptrecommendations_accessReviewInstance"
}-->
```http
POST https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/acceptRecommendations
```

### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-25 00:00:01 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Accept recommendations accessReviewInstance",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
