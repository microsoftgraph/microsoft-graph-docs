# Update identityExperienceFrameworkPolicy

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update properties in an existing [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Policy.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /policies/identityExperienceFramework/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a XML representation of the [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md) object.

## Response

If successful, this method returns `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example updates **identityExperienceFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "request",
  "name": "update_identityexperienceframework"
}-->
```http
PATCH https://graph.microsoft.com/beta/policies/identityExperienceFramework/B2C_1A_SocialAndLocalAccounts_Base
Content-Type:application/xml
<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="tenantName.onmicrosoft.com" PolicyId="B2C_1A_SocialAndLocalAccounts_Base">
    <!---PolicyContent-->
</TrustFrameworkPolicy>
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update identityExperienceFramework",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->