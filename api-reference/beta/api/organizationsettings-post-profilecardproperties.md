---
title: "Create profileCardProperty"
description: "Use this API to create a new profileCardProperty."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create profileCardProperty

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new profileCardProperty.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

_Note: The profileCardProperties object requires the signed-in user to have a Tenant Administrator or Global Administrator role to successfully execute.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST https://graph.microsoft.com/beta/organization/settings/profileCardProperties
```

## Request headers

| Name          |Description                  |
|:--------------|:----------------------------|
| Authorization | Bearer {token}              |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [profileCardProperty](../resources/profilecardproperty.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_profilecardproperty_from_organizationsettings"
}-->

```http
POST https://graph.microsoft.com/beta/organization/settings/profileCardProperties
Content-type: application/json

{
  "directoryPropertyName": "directoryPropertyName-value",
  "annotations": [
    {
      "displayName": "displayName-value",
      "localizations": [
        {
          "languageTag": "languageTag-value",
          "displayName": "displayName-value"
        }
      ]
    }
  ]
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileCardProperty"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "directoryPropertyName": "CustomAttribute1",
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "ru-RU",
          "displayName": "центр затрат"
        }
      ]
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create profileCardProperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->