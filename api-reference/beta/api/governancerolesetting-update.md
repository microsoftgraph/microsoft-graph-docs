---
title: "Update governanceRoleSetting"
description: "Update the properties of governanceRoleSetting."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "governance"
author: "shauliu"
---

# Update governanceRoleSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of [governanceRoleSetting](../resources/governancerolesetting.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference#privileged-access-permissions).

>**Note:** This API also requires that the requester have at least one `Active` administrator role assignment (`owner` or `user access administrator`) on the resource.

|Permission type      | Permissions              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |
### Azure resources

| Permission type | Permissions |
|:--------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureResources |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

### Azure AD

| Permission type | Permissions |
|:--------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureAD |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

### Groups

|Permission type | Permissions |
|:-------------- |:----------- |
| Delegated (work or school account) | PrivilegedAccess.ReadWrite.AzureADGroup |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /privilegedAccess/azureResources/roleSettings/{id}
```
## Request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {token}|
| Content-type  | application/json|


## Request body
In the request body, supply the values for [governanceRuleSettings](../resources/governancerulesetting.md) that need to be updated. 

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|adminEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when an administrator tries to add an eligible role assignment.|
|adminMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when an administrator tries to add a direct member role assignment.|
|userEligibleSettings|[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when a user tries to add an eligible role assignment. |
|userMemberSettings|[governanceRuleSetting](../resources/governancerulesetting.md) collection|The rule settings that are evaluated when a user tries to activate his role assignment.|

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_governancerolesetting"
}-->
```http
PATCH https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5
Content-type: application/json
Content-length: 350

{
   "adminEligibleSettings":[
      {
         "ruleIdentifier":"ExpirationRule",
         "setting":"{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"
      }
   ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-governancerolesetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-governancerolesetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-governancerolesetting-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-governancerolesetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
<!-- {
  "blockType": "response"
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
  ]
}
-->


