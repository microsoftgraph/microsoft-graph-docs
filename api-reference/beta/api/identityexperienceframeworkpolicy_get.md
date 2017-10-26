# Get identityExperienceFrameworkPolicy

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties of an existing [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /policies/identityExperienceFramework/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and a XML representation of the [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md) in the response body.

## Example

The following example retrieves a specific **identityExperienceFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "request",
  "name": "get_identityexperienceframework"
}-->
```http
GET https://graph.microsoft.com/beta/policies/identityExperienceFramework/B2C_1A_Test
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policies.identityExperienceFramework"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.mediaReadLink": "identityExperienceFrameworkPolicies/B2C_1A_Test/$value",
    "id": "B2C_1A_Test"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get identityExperienceFramework",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->