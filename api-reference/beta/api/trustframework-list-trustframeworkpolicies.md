---
title: "List trustFrameworkPolicies"
description: "This operation lists all trustFrameworkPolicy objects in an Azure AD B2C tenant."
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---
# List trustFrameworkPolicies

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of [trustFrameworkPolicies](../resources/trustframeworkpolicy.md) in the tenant/directory.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Policy.Read.TrustFramework, Policy.Read.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /trustFramework/policies/
```
## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) objects in a JSON representation in the response body.

## Example

The following example retrieves all **trustFrameworkPolicies**.

##### Request

<!-- {
  "blockType": "request",
  "name": "get_trustFrameworks"
}-->
```http
GET https://graph.microsoft.com/beta/trustFramework/policies
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkPolicy",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "B2C_1A_CustomPolicy2"
        },
        {
            "id": "B2C_1A_CustomPolicy3"
        },
        {
            "id": "B2C_1A_SocialAndLocalAccounts_Base"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List trustFrameworkPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
