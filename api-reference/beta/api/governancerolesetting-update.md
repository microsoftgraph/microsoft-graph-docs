---
title: "Update governanceRoleSetting"
description: "Update the properties of governanceRoleSetting."
localization_priority: Normal
doc_type: apiPageType
---

# Update governanceRoleSetting

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of [governanceRoleSetting](../resources/governancerolesetting.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** This API also requires that the requester have at least one `Active` administrator role assignment (`owner` or `user access administrator`) on the resource.

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | PrivilegedAccess.ReadWrite.AzureResources |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /privilegedAccess/azureResources/roleSettings/{id}
```
## Request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|
| Content-type  | application/json|


## Request body
In the request body, supply the values for [governanceRuleSettings](../resources/governancerulesetting.md) that need to be updated. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|adminEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add an eligible role assignment.|
|adminMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when an administrator tries to add a direct member role assignment.|
|userEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to add an eligible role assignment. This is not supported for `pimforazurerbac` scenario for now, and may be available in the future scenarios.|
|userMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md)|The rule settings that are evaluated when a user tries to activate his role assignment.|

## Response
If successful, this method returns a `204 NoContent` response code. It does not return anything in the response body. 

### Error codes
This API returns the standard HTTP error codes. In addition, it returns the following custom error codes.

|Error code     | Error message         | Details             |
|:--------------| :---------------------|:--------------------|
| 400 BadRequest| RoleSettingNotFound   | The [governanceRoleSetting](../resources/governancerolesetting.md) does not exist in system.
| 400 BadRequest| InvalidRoleSetting    | The [governanceRuleSettings](../resources/governancerulesetting.md) values provided in the request body are not valid.

## Example 
This example updates the role setting for Custom Role 3 in the subscription Wingtip Toys - Prod.
##### Request
<!-- {
  "blockType": "request",
  "name": "update_governancerolesetting"
}-->
```http
PATCH https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5
Content-type: application/json
Content-length: 350

{
  "adminEligibleSettings":[{"ruleIdentifier":"ExpirationRule","setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"}]
}
```
##### Response
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update governanceRoleSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/governancerolesetting-update.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
