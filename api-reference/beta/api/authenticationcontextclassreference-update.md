---
title: "Update authenticationContextClassReference"
description: "Update the properties of a authenticationContextClassReference object."
localization_priority: Normal
author: "calebb"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update authenticationContextClassReference

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authenticationContextClassReference](../resources/authenticationcontextclassreference.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                    |
|:--------------------------------------|:---------------------------------------------------------------|
|Delegated (work or school account)     | Policy.ReadWrite.ConditionalAccess |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Policy.ReadWrite.ConditionalAccess |

> [!NOTE]
> This API has a [known issue](/graph/known-issues#permissions) related to permissions.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/conditionalAccess/authenticationContextClassReferences/{id}
```

## Request headers

| Name          | Description      |
|:--------------|:-----------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant properties that should be updated. Existing properties that are not included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

For the list of properties, see [authenticationContextClassReference](../resources/authenticationContextClassReference.md).

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationcontextclassreference"
}-->

```http
PATCH https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationContextClassReferences/c1
Content-type: application/json

{
   "value": 
    [
      {
         "displayName": "Contoso trusted locations",
        "description": "Access is only allowed from trusted locations",
        "isAvailable": true
      }
    ]
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationcontextclassreference-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---




### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update authenticationContextClassReference",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
