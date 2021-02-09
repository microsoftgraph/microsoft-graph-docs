---
title: "trustFrameworkKeySet: uploadPkcs12"
description: "Upload a PKCS 12 format key (PFX) to a keyset."
localization_priority: Normal
author: "Nickgmicrosoft"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# trustFrameworkKeySet: uploadPkcs12

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upload a PKCS12 format key (PFX) to a [trustFrameworkKeyset](../resources/trustframeworkkeyset.md). The input is a base-64 encoded value of the Pfx certificate contents. This method returns [trustFrameworkKey](../resources/trustframeworkkey.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | TrustFrameworkKeySet.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | TrustFrameworkKeySet.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /trustFramework/keySets/{id}/uploadPkcs12
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|key|String|This is the field for sending pfx content. The value should be a base-64 encoded version of the actual certificate content.|
|password|String|This is the field for sending the password to PFX content.|

## Response

If successful, this method returns a `200 OK` response code and a new [trustFrameworkKey](../resources/trustframeworkkey.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "trustframeworkkeyset_uploadpkcs12"
}-->

```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/uploadPkcs12
Content-type: application/json

{
  "key": "Base64-encoded-pfx-content",
  "password": "password-value"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/trustframeworkkeyset-uploadpkcs12-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/trustframeworkkeyset-uploadpkcs12-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/trustframeworkkeyset-uploadpkcs12-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/trustframeworkkeyset-uploadpkcs12-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkKey"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"kid": "kid-value",
	"use": "sig",
	"kty": "OCT",
	"nbf": 1508969811,
	"exp": 1508973711
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet: uploadPkcs12",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


