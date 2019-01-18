---
title: "Remove accessReview reviewer"
description: "In the Azure AD access reviews feature, update an existing accessReview object to remove a user as a reviewer.  This operation is only permitted for an access review that is not yet completed, and only for an access review where the reviewers are explicitly specified. This operation is not permitted for an access review in which users review their own access, and not intended for an access review in which the group owners are assigned as the reviewers. "
localization_priority: Normal
author: "lleonard-msft"
ms.prod: "microsoft-identity-platform"
---

# Remove accessReview reviewer

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](../resources/accessreviews-root.md) feature, update an existing [accessReview](../resources/accessreview.md) object to remove a user as a reviewer.  This operation is only permitted for an access review that is not yet completed, and only for an access review where the reviewers are explicitly specified. This operation is not permitted for an access review in which users review their own access, and not intended for an access review in which the group owners are assigned as the reviewers. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /accessReviews('{reviewId}')/reviewers('{userId'})
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
No request body should be supplied.


## Response
If successful, this method returns a 200-series response code.

## Example

This is an example of updating a one-time (not reoccurring) access review to remove an unnecessary reviewer.


##### Request
In the request URL, supply the id of the accessReview object and then the id of the user object.

<!-- {
  "blockType": "request",
  "name": "remove_accessReview_reviewer"
}-->
```http
DELETE https://graph.microsoft.com/beta/accessReviews('2b83cc42-09db-46f6-8c6e-16fec466a82d')/reviewers('006111db-0810-4494-a6df-904d368bd81b')

```

##### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No content
```

<!-- {
  "type": "#page.annotation",
  "description": "Remove accessReview reviewer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
