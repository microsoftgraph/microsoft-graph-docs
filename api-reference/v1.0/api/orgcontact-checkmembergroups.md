---
title: "orgContact: checkMemberGroups"
description: "Check for membership in the specified list of groups. Returns from the list those group IDs of which the organizational contact has a direct or transitive membership."
localization_priority: Normal
author: "dkershaw10"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# orgContact: checkMemberGroups

Namespace: microsoft.graph

Check for membership in the specified list of groups. Returns from the list those group IDs of which the [organizational contact](../resources/orgcontact.md) has a direct or transitive membership.

You can check up to a maximum of 20 groups per request. This function supports Microsoft 365 and other types of groups provisioned in Azure Active Directory (Azure AD).

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
POST /contacts/{id}/checkMemberGroups

```
## Request headers
| Header       | Value |
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-type   | application/json. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|groupIds|String collection | A list of group IDs to check. |

## Response

If successful, this method returns a `200 OK` response code and a String collection object in the response body.

## Example

##### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_checkmembergroups"
}-->
```http
POST https://graph.microsoft.com/v1.0/contacts/{id}/checkMemberGroups
Content-type: application/json
Content-length: 44

{
  "groupIds": [
    "groupId-value1", "groupId-value2" 
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-checkmembergroups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-checkmembergroups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/orgcontact-checkmembergroups-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-checkmembergroups-java-snippets.md)]
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
    "groupId-value"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "orgContact: checkMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

