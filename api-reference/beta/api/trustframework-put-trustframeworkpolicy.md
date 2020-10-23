---
title: "Update trustFrameworkPolicy"
description: "This operation updates an existing trustFrameworkPolicy object, or if one doesn't exist, it creates one. "
localization_priority: Normal
author: "Nickgmicrosoft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---
# Update or create trustFrameworkPolicy

Namespace: microsoft.graph

>**Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update an existing [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) or create one if it does not exist.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Policy.ReadWrite.TrustFramework|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Policy.ReadWrite.TrustFramework|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /trustFramework/policies/{id}/$value
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/xml. Required.|

## Request body

In the request body, provide an XML representation of the [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) object. 

>**Note:** the content type must be `application/xml`.

## Response

The response will be one of the following:
- If a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) exists, a successful request returns a `200 OK` response code.
- If a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) does not exist, a successful request returns a `201 Created` response code.
- If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example updates a **trustFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "ignored",
  "name": "update_trustframeworkpolicy"
}-->
```http
PUT https://graph.microsoft.com/beta/trustFramework/policies/B2C_1A_SocialAndLocalAccounts_Base/$value
Content-Type: application/xml

<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="tenantName.onmicrosoft.com" PolicyId="B2C_1A_SocialAndLocalAccounts_Base">
    <!---PolicyContent-->
</TrustFrameworkPolicy>
```

##### Response

<!-- {
  "blockType": "ignored",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/xml

<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="tenantName.onmicrosoft.com" PolicyId="B2C_1A_Test" PublicPolicyUri="http://tenantName.onmicrosoft.com/B2C_1A_Test">
	.....
	....
	<!---PolicyContent-->
	....
	....
</TrustFrameworkPolicy>
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update trustframeworkpolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


