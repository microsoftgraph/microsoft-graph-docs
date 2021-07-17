---
title: "group: getMemberGroups"
description: "Return all the groups that the specified group is a member of. The check is transitive, unlike reading the memberOf navigation property, which returns only the groups that the group is a direct member of."
localization_priority: Normal
author: "Jordanndahl"
ms.prod: "groups"
doc_type: apiPageType
---

# group: getMemberGroups

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return all the groups that the specified group is a member of. The check is transitive, unlike reading the [memberOf](../api/group-list-memberof.md) navigation property, which returns only the groups that the group is a direct member of.

This function supports Microsoft 365 and other types of groups provisioned in Azure AD. The maximum number of groups each
request can return is 2046. Note that Microsoft 365 groups cannot contain groups. So membership in a Microsoft 365 group is
always direct.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                 |
| :------------------------------------- | :------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | GroupMember.Read.All, Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported.                                                                              |
| Application                            | GroupMember.Read.All, Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All                             |

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

### Request

The following is an example of the request.


<!-- {
  "blockType": "request",
  "name": "group_getmembergroups"
}-->

```http
POST https://graph.microsoft.com/beta/groups/1132b215-826f-42a9-8cfe-1643d19d17fd/getMemberGroups
Content-type: application/json

{
  "securityEnabledOnly": false
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    "1132b215-826f-42a9-8cfe-1643d19d17fd"
  ]
}
```

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
  ]
}
-->


