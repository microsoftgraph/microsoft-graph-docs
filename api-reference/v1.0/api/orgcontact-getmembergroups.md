---
title: "orgContact: getMemberGroups"
description: "Return all the groups that the organizational contact is a member of."
localization_priority: Normal
author: "dkershaw10"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# orgContact: getMemberGroups

Namespace: microsoft.graph

Return all the groups that the [organizational contact](../resources/orgcontact.md) is a member of. The check is transitive, unlike reading the **memberOf** navigation property, which returns only the groups that the user is a direct member of.

This function supports Microsoft 365 and other types of groups provisioned in Azure Active Directory (Azure AD). The maximum number of groups each request can return is 2046. 

>[!NOTE]
>Microsoft 365 groups cannot contain groups. Membership in a Microsoft 365 group is always direct.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OrgContact.Read.All and Group.Read.All, Directory.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | OrgContact.Read.All and Group.Read.All, Directory.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /contacts/{id}/getMemberGroups

```
## Request headers
| Header       | Value |
|:---------------|:----------|
| Authorization  |  Bearer {token}. Required. |
| Content-type   | application/json. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|securityEnabledOnly|Boolean|Set to `false`. Returning only security-enabled groups is supported for users only.|

## Response

If successful, this method returns a `200 OK` response code and a String collection object in the response body.

## Example

##### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_getmembergroups"
}-->
```http
POST https://graph.microsoft.com/v1.0/contacts/{id}/getMemberGroups
Content-type: application/json
Content-length: 33

{
  "securityEnabledOnly": false
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-getmembergroups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-getmembergroups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/orgcontact-getmembergroups-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-getmembergroups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
The following is an example of the response.
>**Note**: The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 39

{
  "value": [
    "groupId-value1",
    "groupId-value2"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "orgContact: getMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

