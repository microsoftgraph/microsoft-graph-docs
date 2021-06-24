---
title: "Add directory role member"
description: "Use this API to create a new directory role member."
author: "abhijeetsinha"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# Add directory role member

Namespace: microsoft.graph

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
| Content-Type  | string  | application/json. Required.  |

## Request body
In the request body, supply a JSON representation of a [directoryObject](../resources/directoryobject.md) or [user](../resources/user.md) object to be added.

## Response

If successful, this method returns `204 No Content` response code.

## Examples

### Example 1: Add a new member to a directory role using role objectId

In this request, replace `fe8f10bf-c9c2-47eb-95cb-c26cc85f1830` with the **id** value for the directory role you wish to assign to the user or directory object. Replace `15c1a2d5-9101-44b2-83ab-885db8a647ca` with the **id** value of your user or directory object. 

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryrole_objectId"
}-->
```http
POST https://graph.microsoft.com/v1.0/directoryRoles/fe8f10bf-c9c2-47eb-95cb-c26cc85f1830/members/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/15c1a2d5-9101-44b2-83ab-885db8a647ca"
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directoryrole-objectid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-directoryobject-from-directoryrole-objectid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directoryrole-objectid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directoryrole-objectid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
Content-type: text/plain

```

### Example 2: Add a new member to a directory role using role templateId

In this request, replace `88d8e3e3-8f55-4a1e-953a-9b9898b8876b` with the value of the **roleTemplateId** for the directory role you wish to assign to the user or directory object. Replace `bb165b45-151c-4cf6-9911-cd7188912848` with the **id** value of your user or directory object. 

##### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryrole_templateId"
}-->
```http
POST https://graph.microsoft.com/v1.0/directoryRoles/roleTemplateId=88d8e3e3-8f55-4a1e-953a-9b9898b8876b/members/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/bb165b45-151c-4cf6-9911-cd7188912848"
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-directoryobject-from-directoryrole-templateid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-directoryobject-from-directoryrole-templateid-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-directoryobject-from-directoryrole-templateid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-directoryobject-from-directoryrole-templateid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

