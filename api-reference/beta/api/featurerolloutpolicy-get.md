---
title: "Get featureRolloutPolicy"
description: "Retrieve the properties and relationships of a featurerolloutpolicy object."
localization_priority: Normal
author: "madhavpatel6"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get featureRolloutPolicy

Namespace: microsoft.graph

[!INCLUDE [feature-rolloutpolicy-deprecate](../../includes/directory-featurerolloutpolicies-deprecate.md)]

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [featureRolloutPolicy](../resources/featurerolloutpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/featureRolloutPolicies/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [featureRolloutPolicy](../resources/featurerolloutpolicy.md) object in the response body.

## Examples

### Example 1: Get a feature rollout policy

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_featurerolloutpolicy_policies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/featureRolloutPolicies/df85e4d9-e8c4-4033-a41c-73419a95c29c
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-featurerolloutpolicy-policies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-featurerolloutpolicy-policies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-featurerolloutpolicy-policies-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-featurerolloutpolicy-policies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.featureRolloutPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "df85e4d9-e8c4-4033-a41c-73419a95c29c",
  "displayName": "SeamlessSso rollout policy",
  "description": "SeamlessSso rollout policy",
  "feature": "seamlessSso",
  "isEnabled": true,
  "isAppliedToOrganization": false
}
```

### Example 2: Get a feature rollout policy and expand appliesTo

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_featurerolloutpolicy_expandAppliesTo_policies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/featureRolloutPolicies/df85e4d9-e8c4-4033-a41c-73419a95c29c?$expand=appliesTo
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-featurerolloutpolicy-expandappliesto-policies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-featurerolloutpolicy-expandappliesto-policies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-featurerolloutpolicy-expandappliesto-policies-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-featurerolloutpolicy-expandappliesto-policies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.featureRolloutPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "df85e4d9-e8c4-4033-a41c-73419a95c29c",
  "displayName": "SeamlessSso rollout policy",
  "description": "SeamlessSso rollout policy",
  "feature": "seamlessSso",
  "isEnabled": true,
  "isAppliedToOrganization": false,
  "appliesTo": [
    {
      "id": "2441b489-4f12-4882-b039-8f6006bd66da",
      "objectType": "group"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get featureRolloutPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


