---
title: "application: removePassword"
description: "Removes a password from an application"
localization_priority: Normal
author: "sureshja"
ms.prod: ""
doc_type: "apiPageType"
---

# application: removePassword

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes a password from an application.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applications/{id}/removePassword
```

## Request headers

| Name           | Type   | Description                |
|:---------------|:-------|:---------------------------|
| Authorization  | string | Bearer {token}. Required.  |

## Request body

In the request body, provide a JSON representation of [passwordCredential](../resources/passwordcredential.md) object.

## Response

If successful, this method returns `204, No content` response code.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "application_addpassword"
}-->

```http
POST https://graph.microsoft.com/beta/applications/{id}/removePassword
Content-type: application/json

{
    "keyId": "f0b0b335-1d71-4883-8f98-567911bfdca6"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordCredential"
} -->

```http
204 No content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application: removePassword",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->