---
title: "List accessReview decisions"
description: "In the Azure AD access reviews feature, retrieve the decisions of an accessReview object."
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# List accessReview decisions

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](../resources/accessreviews-root.md) feature, retrieve the decisions of an [accessReview](../resources/accessreview.md) object.

Note that a recurring access review will not have a `decisions` relationship.  Instead, the caller must navigate the `instance` relationship to find an `accessReview` object for a current or past instance of the access review.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | `AccessReview.Read.All`, `AccessReview.ReadWrite.All`.  The signed in user must also be in a directory role which permits them to read an access review. |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /accessReviews('{reviewId}')/decisions
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
No request body should be supplied.

## Response
If successful, this method returns a `200, OK` response code and an array of [accessReviewDecision](../resources/accessreviewdecision.md) objects in the response body.

## Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_accessReview_decisions"
}-->
```http
GET https://graph.microsoft.com/beta/accessReviews('2b83cc42-09db-46f6-8c6e-16fec466a82d')/decisions
```

##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewDecision",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value":[
    {
            "id": "2b83cc42-09db-46f6-8c6e-16fec466a82d",
            "accessReviewId": "2b83cc42-09db-46f6-8c6e-16fec466a82d",
            "reviewResult": "Approve",
            "userPrincipalName": "alice@litware.com",
            "userId": "Alice Smith"
    }
    ]
}
```

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get accessReview](accessreview-get.md) |	[accessReview](../resources/accessreview.md) |	Retrieve an access review. |
|[List my accessReview decisions](accessreview-listmydecisions.md) |		[accessReviewDecision](../resources/accessreviewdecision.md) collection|	As a reviewer, get my decisions of an accessReview.|
|[Send accessReview reminder](accessreview-sendreminder.md) |		None.	|	Send a reminder to the reviewers of an accessReview. |
|[Stop accessReview](accessreview-stop.md) |		None.	|	Stop an accessReview. |
|[Reset accessReview decisions](accessreview-reset.md) |		None.	|	Reset the decisions in an in-progress accessReview.|
|[Apply accessReview decisions](accessreview-apply.md) |		None.	|	Apply the decisions from a completed accessReview.|


<!-- {
  "type": "#page.annotation",
  "description": "Get accessReview decisions",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
