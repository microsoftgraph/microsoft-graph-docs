# Swap identityExperienceFrameworkPolicies

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Swap two existing [identityExperienceFrameworkPolicies](../resources/identityexperienceframeworkpolicy.md) such as a staged and production policy.

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
POST /policies/identityExperienceFramework/{id}/swap
Content-type: application/json
{
  "destinationId": "destinationId-value"
}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code.

## Example

The following example deletes an **identityExperienceFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "request",
  "name": "swap_identityexperienceframework"
}-->
```http
POST https://graph.microsoft.com/beta/policies/identityExperienceFramework/B2C_1A_SocialAndLocalAccounts_Base/swap
Content-type: application/json
{
  "destinationId": "B2C_1A_SocialAndLocalAccounts_Base_Stage"
}
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
  "description": "Delete identityExperienceFrameworkPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->