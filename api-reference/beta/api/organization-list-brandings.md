---
title: "List brandings"
description: "Retrieve a list of organizationalbranding objects."
localization_priority: Normal
author: "anchanda"
ms.prod: "branding"
doc_type: "apiPageType"
---

# List brandings

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of organizationalbranding objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | orgContacts.Read.All |
| Delegated (personal Microsoft account) | orgContacts.Read.All |
| Application                            | orgContacts.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /organization/{id}/brandings
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters)

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [organizationalBranding](../resources/organizationalbranding.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_brandings"
}-->

```http
GET https://graph.microsoft.com/beta/organization/{id}/brandings
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "id-value",
      "backgroundColor": "backgroundColor-value",
      "backgroundImage": "backgroundImage-value",
      "bannerLogo": "bannerLogo-value",
      "locale": "locale-value",
      "signInPageText": "signInPageText-value"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List brandings",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
