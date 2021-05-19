---
title: "List approvalSteps"
description: "List approval steps associated with an approval object."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "apiPageType"
---

# List approvalSteps

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-root.md), lists the [approvalStep](../resources/approvalstep.md) objects associated with an [approval](../resources/approval.md) object.  This call can be made by an approver, providing the identifier of the [access package assignment request](../resources/accesspackageassignmentrequest.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{id}/steps
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of the [approvalStep](../resources/approvalstep.md) objects in the response body. However, if the caller does not have the right permissions, the method returns a `403 Forbidden` response code.

## Examples

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approvalstep_1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/steps
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approvalstep-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approvalstep-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-approvalstep-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approvalstep-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalStep"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "d4fa4045-4716-436d-aec5-57b0a713f095",
            "displayName": null,
            "reviewedDateTime": null,
            "reviewResult": "NotReviewed",
            "status": "InProgress",
            "assignedToMe": true,
            "justification": "",
            "reviewedBy": null
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List approvalstep",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


