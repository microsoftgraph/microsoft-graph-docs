---
title: "group: getMemberGroups"
description: "Return all the groups that the specified group is a member of. The check is transitive, unlike reading the memberOf navigation property, which returns only the groups that the group is a direct member of."
localization_priority: Normal
author: "dkershaw10"
ms.prod: "groups"
---

# group: getMemberGroups

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return all the groups that the specified group is a member of. The check is transitive, unlike reading the [memberOf](../api/group-list-memberof.md) navigation property, which returns only the groups that the group is a direct member of.

This function supports Office 365 and other types of groups provisioned in Azure AD. The maximum number of groups each
request can return is 2046. Note that Office 365 Groups cannot contain groups. So membership in an Office 365 Group is
always direct.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                 |
| :------------------------------------- | :------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | ~~Group.Read.All~~, Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported.                                                                              |
| Application                            | ~~Group.Read.All~~, Directory.Read.All, Directory.ReadWrite.All                             |

> **Note:** This API currently requires the `Directory.Read.All` permission or higher. Using the `Group.Read.All` permission will return an error. This is a known bug.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups/{id}/getMemberGroups
```

## Request headers

| Name          | Type   | Description               |
| :------------ | :----- | :------------------------ |
| Authorization | string | Bearer {token}. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter           | Type    | Description                                                                           |
| :------------------ | :------ | :------------------------------------------------------------------------------------ |
| securityEnabledOnly | Boolean | Set to **false**. Returning only security-enabled groups is supported for users only. |

## Response

If successful, this method returns `200 OK` response code and String collection in the response body that contains the IDs of the groups that the group is a member of.

## Example

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "group_getmembergroups"
}-->

```http
POST https://graph.microsoft.com/beta/groups/{id}/getMemberGroups
Content-type: application/json
Content-length: 33

{
  "securityEnabledOnly": false
}
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

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
    "string-value"
  ]
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/group_getmembergroups-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/group_getmembergroups-Javascript-snippets.md)]

---


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "group: getMemberGroups",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/group-getmembergroups.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
