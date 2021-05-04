---
title: "List permissionGrants of a group"
description: "Retrieve permissionGrants of a group."
author: "akjo"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List permissionGrants of a group

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [resource-specific permission grants](../resources/resourcespecificpermissiongrant.md) on the [group](../resources/group.md). This is a list of Azure AD apps that have access to the group along with the kind of access that each app has.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)                                          |
| :------------------------------------- | :----------------------------------------------------------------------------------- |
| Delegated (work or school account)     | GroupMember.Read.All, GroupMember.ReadWrite.All, Group.Read.All, Group.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                       |
| Application                            | GroupMember.Read.All, GroupMember.ReadWrite.All, Group.Read.All, Group.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{group-id}/permissionGrants
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
| Authorization    | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [resourceSpecificPermissionGrant](../resources/resourcespecificpermissiongrant.md) objects in the response body.

## Examples

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "group_list_permission_grants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/14c981a4-dca9-4565-bae6-e13ada8861be/permissionGrants
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/group-list-permission-grants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/group-list-permission-grants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/group-list-permission-grants-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/group-list-permission-grants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.resourceSpecificPermissionGrant"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#permissionGrants",
    "value": [
        {
            "id": "ZfwbxSIj9OGOBxsBmwY555mOHr_W6qN7LEbFYIIcM5A",
            "deletedDateTime": null,
            "clientId": "771b9da9-2260-41eb-a587-4d936e4aa08c",
            "clientAppId": "fdebf36e-8b3a-4b00-99fb-2e4d1da706d6",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "TeamMember.Read.Group"
        },
        {
            "id": "WsYCHhlwjliiK19ONpJiWq6rtFy-Tg1q8h9-f-DATto",
            "deletedDateTime": null,
            "clientId": "771b9da9-2260-41eb-a587-4d936e4aa08c",
            "clientAppId": "fdebf36e-8b3a-4b00-99fb-2e4d1da706d6",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "TeamsTab.Create.Group"
        },
        {
            "id": "wtAZautz7ilRA0kgHYWr2Ss2FTK3jPkf-HPhj3FS1wo",
            "deletedDateTime": null,
            "clientId": "74c92190-dc0e-485a-81c6-fdffd4aadfd8",
            "clientAppId": "69024002-35ae-4574-a219-f261183580b4",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "TeamMember.Read.Group"
        }
    ]
}
```
