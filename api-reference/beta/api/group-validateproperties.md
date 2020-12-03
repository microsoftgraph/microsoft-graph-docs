---
title: "group: validateProperties"
description: "Validate if a Microsoft 365 group's display name or mail nickname complies with naming policies."
localization_priority: Normal
author: "yyuank"
ms.prod: "groups"
doc_type: apiPageType
---

# group: validateProperties

Namespace: microsoft.graph

Validate if a Microsoft 365 group's display name or mail nickname complies with naming policies. Clients can use the API to determine if a display name or mail nickname is valid before trying to **update** a Microsoft 365 group. For validating properties before creating a group, use the [validateProperties function](directoryobject-validateproperties.md) for directory objects.

The following validations are performed for the display name and mail nickname properties: 
1. Validate the prefix and suffix naming policy
2. Validate the custom banned words policy

This API returns with the first failure encountered. If one or more properties fail multiple validations, only the property with the first validation failure is returned. However, you can validate both the mail nickname and the display name and receive a collection of validation errors if you are only validating the prefix and suffix naming policy.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Read.All, Group.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
``` http
POST /groups/{id}/validateProperties
```

## Request headers

| Name           | Description      |
|:---------------|:-----------------|
| Authorization  | Bearer {code}    |
| Content-Type   | application/json |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type   |Description|
|:---------------|:--------|:----------|
|displayName|String| The display name of the group to validate. The property is not individually required. However, at least one property (displayName or mailNickname) is required. |
|mailNickname|String| The mail nickname of the group to validate. The property is not individually required. However, at least one property (displayName or mailNickname) is required. |
|onBehalfOfUserId|Guid| The object ID of the user to impersonate when calling the API. The validation results are for the onBehalfOfUserId's attributes and roles. |

## Response
If successful and there are no validation errors, the method returns `204 No Content` response code. It does not return anything in the response body.

If the request is invalid, the method returns `400 Bad Request` response code. An error message with details about the invalid request is returned in the response body.

If there is a validation error. The method returns `422 Unprocessable Entity` response code. An error message and a collection of error details is returned in the response body.

## Examples

This is an example of a successful validation request.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group_validateproperties"
}-->
``` http
POST https://graph.microsoft.com/beta/groups/{id}/validateProperties
Content-type: application/json
Content-length: 132

{
  "displayName": "Myprefix_test_mysuffix",
  "mailNickname": "Myprefix_test_mysuffix",
  "onBehalfOfUserId": "onBehalfOfUserId-value"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/group-validateproperties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/group-validateproperties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/group-validateproperties-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/group-validateproperties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
} -->
```http
HTTP/1.1 204 No Content
```

This is an example of a request with validation errors.

### Request
``` http
POST https://graph.microsoft.com/beta/groups/{id}/validateProperties
Content-type: application/json
Content-length: 128

{
  "displayName": "MyPrefix_test_mysuffix",
  "mailNickname": "MyPrefix_test_mysuffix"
}
```

### Response
```http
HTTP/1.1 422
Content-type: application/json
Content-length: 223

{
  "error": {
    "code": "Request_UnprocessableEntity",
    "message": "The values provided contain one or more validation errors.",
    "innerError": {
      "request-id": "id-value",
      "date": "date-value"
    },
    "details": [
      {
        "target": "mailNickname",
        "code": "PropertyConflict",
        "message": "Another object with the same value for property mailNickname already exists."
      }
    ]
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: validateProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


