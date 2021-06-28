---
title: "List accessReviewInstanceDecisionItem"
description: "Retrieve accessReviewInstanceDecisionItem objects."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# List accessReviewInstanceDecisionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects for a specific [accessReviewInstance](../resources/accessreviewinstance.md). A list of zero or more accessReviewInstanceDecisionItem objects are returned, including all of their nested properties.

>[!NOTE]
>The default page size for this API is 100 accessReviewInstanceDecisionItem objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.Read.All, AccessReview.ReadWrite.All |

 The signed-in user must also be in a directory role that permits them to read an access review.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/accessReviews/definitions/{definition-id}/instances/{instance-id}/decisions
```

## Optional query parameters
This method supports `$select`, `$filter`, `$orderBy`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
None.

## Request body
Do not supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an array of [accessReviewInstanceDecisionItem](../resources/accessreviewinstance.md) objects in the response body.

## Examples
### Request
The following example shows a request to retrieve all the decisions on an instance of an access review.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessReviewInstanceDecisionItem"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/60860cdd-fb4d-4054-91ba-444404f3baa6/instances/14444cdb-6a18-4c08-ba2c-48c02f0a0138/decisions?$top=100&$skip=0
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewinstancedecisionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewinstancedecisionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-accessreviewinstancedecisionitem-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewinstancedecisionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0')/instances('6444d4fd-ab55-4608-8cf9-c6702d172bcc')/decisions",
    "@odata.count": 2,
    "value": [
        {
            "id": "e6cafba0-cbf0-4748-8868-0810c7f4cc06",
            "accessReviewId": "6444d4fd-ab55-4608-8cf9-c6702d172bcc",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
                "userDisplayName": "Diego Siciliani",
                "userPrincipalName": "DiegoS@contoso.com"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
                "displayName": "Diego Siciliani",
                "userPrincipalName": "DiegoS@contoso.com"
            }
        },
        {
            "id": "4bde8d40-9224-4aa3-936b-08d73e1baf47",
            "accessReviewId": "6444d4fd-ab55-4608-8cf9-c6702d172bcc",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/11feb738-0039-4a6c-a045-dcb91a47969a",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "11feb738-0039-4a6c-a045-dcb91a47969a",
                "userDisplayName": "Johanna Lorenz",
                "userPrincipalName": "JohannaL@contoso.com"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "11feb738-0039-4a6c-a045-dcb91a47969a",
                "displayName": "Johanna Lorenz",
                "userPrincipalName": "JohannaL@contoso.com"
            }
        }
    ]
}
```

## See also

- [Get accessReviewScheduleDefinition](accessreviewscheduledefinition-get.md)
- [Get accessReviewInstance](accessreviewinstance-get.md)


<!--
{
  "type": "#page.annotation",
  "description": "List accessReviewInstanceDecisionItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
