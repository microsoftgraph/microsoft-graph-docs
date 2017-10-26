# Copy identityExperienceFrameworkPolicy

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Make a copy of an [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md) in the same tenant.

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
POST /policies/identityExperienceFramework/{id}/copy
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

In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|destinationId|String|The destination ID, for example: `B2C_1A_SocialAndLocal_Backup`.|

## Response

If successful, this method returns `200 OK` response code and a XML representation of the [identityExperienceFrameworkPolicy](../resources/identityexperienceframeworkpolicy.md) in the response body.

## Example

The following example deletes an **identityExperienceFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "request",
  "name": "copy_identityExperienceFramework"
}-->
```http
POST https://graph.microsoft.com/beta/policies/identityExperienceFramework/B2C_1A_SocialAndLocalAccounts_Base/copy
Content-type: application/json
{
  "destinationId": "B2C_1A_SocialAndLocalAccounts_Base_Backup"
}
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