---
title: "Update approvalStep"
description: "Apply approve or deny decision on an approvalStep object."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Update approvalStep

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply approve or deny decision on an [approvalStep](../resources/approvalStep.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{id}/steps/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

The following table shows the properties that are required for this method.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| reviewResult | String | Decision of the approver. Possible values are: `Approve`, `Deny`.|
| justification | String | Justification related to the approver's decision. |


## Response

If successful, this method returns a `204 No Content` response code in the response body. However, if the caller does not have the right permissions, the method returns a `403 Forbidden` response code, or if the approval id is not found, the method returns `404 Not found`. If the request has already been approved by another approver in the same approval stage, the method returns `409 Conflict` in the response body.

## Examples

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "patch_approvalstep"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/steps/d4fa4045-4716-436d-aec5-57b0a713f095
```
# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/patch-approvalstep-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
Content-Type: application/json
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patch approvalStep",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
