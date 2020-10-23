---
title: "Force domain deletion"
description: "Deletes a domain using an asynchronous long-running operation."
author: "adimitui"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Force domain deletion

Namespace: microsoft.graph

Deletes a domain using an asynchronous long-running operation.

The following actions are performed as part of this operation:

* Updates the `userPrincipalName`, `mail`, and `proxyAddresses` properties of `users` with references to the deleted domain to use the initial onmicrosoft.com domain.

* Updates the `mail` property of `groups` with references to the deleted domain to use the initial onmicrosoft.com domain.

* Updates the `identifierUris` property of `applications` with references to the deleted domain to use the initial onmicrosoft.com domain.

* If the number of objects to be renamed is greater than 1000, an error is returned.

* If one of the `applications` to be renamed is a multi-tenant app, an error is returned.

After the domain deletion completes, API operations for the deleted domain will return a HTTP 404 status code. To verify deletion of a domain, you can perform a [get domain](domain-get.md) operation.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Domain.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /domains/{id}/forceDelete
```

> For {id}, specify the domain with its fully qualified domain name.

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type  | application/json |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---------------|:--------|:----------|
|`disableUserAccounts`|`Boolean`| Option to disable user accounts which are renamed. If a user account is disabled, the user will not be allowed to sign in. If set to **true** the `users` updated as part of this operation will be disabled.  Default value is **true**. |

## Response body

If successful, this method returns `HTTP/1.1 204 OK` status code.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "domain_forcedelete"
}-->

```http
POST https://graph.microsoft.com/v1.0/domains/{id}/forceDelete
Content-type: application/json
Content-length: 33

{
  "disableUserAccounts": true
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/domain-forcedelete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/domain-forcedelete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/domain-forcedelete-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/domain-forcedelete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->

```http
HTTP/1.1 204 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domain: forcedelete",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

