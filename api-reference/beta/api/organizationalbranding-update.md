---
title: "Update organizationalBranding"
description: "Use this API to upadte existing organizationalBranding."
localization_priority: Normal
author: "anchanda"
ms.prod: "branding"
doc_type: "apiPageType"
---

# Create organizationalBranding

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to update existing [organizationalBranding](../resources/organizationalbranding.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported |
| Application                            | Organization.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /organization/{id}/brandings/(locale}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer token |

## Examples

### Request

The following is an example of the update branding request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbranding_from_organization"
}-->

```http
POST https://graph.microsoft.com/beta/organization/{id}/brandings/en-US
Content-type: application/json

{
  "backgroundColor": "new backgroundColor-value",
  "signInPageText": "new signInPageText-value"
}
```

### Response

The following is an example of the update branding response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 201 OK
Content-type: application/json

{
  "id": "id-value",
  "backgroundColor": "new backgroundColor-value",
  "backgroundImage": "backgroundImage-value",
  "bannerLogo": "bannerLogo-value",
  "locale": "locale-value",
  "signInPageText": "new signInPageText-value"
}
```
### Request

Adding/Updating BannerLogo for organizationalBranding

```http
PUT https://graph.microsoft.com/v1.0/organization/{id}/branding/{locale}/bannerLogo/
Content-Type: image/jpeg

Binary data for the image
```

### Response

The following is an example of the update branding response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 204 NO CONTENT
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update organizationalBranding",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
