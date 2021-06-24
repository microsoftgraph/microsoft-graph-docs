---
title: "Add directory role member"
description: "Create a new directory role member."
author: "abhijeetsinha"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# Add directory role member

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new directory role member.

You can use both the object ID and template ID of the **directoryRole** with this API. The template ID of a built-in role is immutable and can be seen in the role description on the Azure portal. For details, see [Role template IDs](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#role-template-ids).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | RoleManagement.ReadWrite.Directory, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | RoleManagement.ReadWrite.Directory |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directoryRoles/{role-objectId}/members/$ref
POST /directoryRoles/roleTemplateId={role-templateId}/members/$ref
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of a [directoryObject](../resources/directoryobject.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Example 1: Assign a built-in role to a user
#### Request
The following example assigns a built-in role to a user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryrole_1"
}-->
```http
POST https://graph.microsoft.com/beta/directoryRoles/0afed502-2456-4fd4-988e-3c21924c28a7/members/$ref
Content-type: application/json
Content-length: 30

{
    "@odata.id":"https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2"
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directoryrole-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directoryrole-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-directoryobject-from-directoryrole-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directoryrole-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No content
```

### Example 2: Assign a built-in role to a group
#### Request
You can use a specific resource set like users or groups in the request body, or you can use generic **directoryObjects**. This example shows how you can use **directoryObjects**.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryrole_2"
}-->
```http
POST https://graph.microsoft.com/beta/directoryRoles/0afed502-2456-4fd4-988e-3c21924c28a7/members/$ref
Content-type: application/json
Content-length: 30

{
    "@odata.id":"https://graph.microsoft.com/beta/directoryObjects/2c891f12-928d-4da2-8d83-7d2434a0d8dc"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directoryrole-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directoryrole-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-directoryobject-from-directoryrole-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directoryrole-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No content
```

### Example 3: Add a new member to a directory role using role templateId
#### Request
In this request, replace `88d8e3e3-8f55-4a1e-953a-9b9898b8876b` with the value of the **roleTemplateId** for the directory role you wish to assign to the user or directory object. Replace `bb165b45-151c-4cf6-9911-cd7188912848` with the **id** value of your user or directory object. 


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryrole_2_templateId"
}-->
```http
POST https://graph.microsoft.com/beta/directoryRoles/roleTemplateId=88d8e3e3-8f55-4a1e-953a-9b9898b8876b/members/$ref
Content-type: application/json
Content-length: 30

{
    "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/bb165b45-151c-4cf6-9911-cd7188912848"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directoryrole-2-templateid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directoryrole-2-templateid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-directoryobject-from-directoryrole-2-templateid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directoryrole-2-templateid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No content
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


