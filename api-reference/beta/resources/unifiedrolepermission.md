---
title: "unifiedRolePermission resource type"
description: "A directory role permission is a collection of allowed resource actions and conditions."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# unifiedRolePermission resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of allowed resource actions and the conditions that must be met for the action to be effective. Resource actions are tasks that can be perfomed on a resource. For example, the application resource supports create, update, delete, and reset password resource actions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedResourceActions|String collection| Set of tasks that can be perfomed on a resource. |
|condition|String| Optional constraints that must be met for the permission to be effective. |

### allowedResourceActions property

The following is the schema for resource actions: 

```
<Namespace>/<Entity>/<PropertySet>/<Action>  
```
For example: `microsoft.directory/applications/credentials/update`.  

- Namespace - The services that exposes the task. For example, all tasks in Azure Active Directory use the namespace microsoft.directory.  
- Entity - The logical features or components exposed by the service in Microsoft Graph. For example, applications, service principals, or groups.
- PropertySet - The specific properties or aspects of the entity for which access is being granted. For example, 
`microsoft.directory/applications/authentication/read` grants the ability to read the reply URL, logout URL, and implicit flow property on the **application** object in Azure AD. The following are reserved names for common property sets:  
  - allProperties - Designates all properties of the entity, including privileged properties. Examples include `microsoft.directory/applications/allProperties/read` and `microsoft.directory/applications/allProperties/update`.
  - basic - Designates common read properties but excludes privileged ones. For example, `microsoft.directory/applications/basic/update` includes the ability to update standard properties like display name.
  - standard - Designates common update properties but excludes privileged ones. For example, `microsoft.directory/applications/standard/read`.
- Actions - The operations being granted. In most circumstances, permissions should be expressed in terms of CRUD or allTasks. Actions include:
  - Create - The ability to create a new instance of the entity.
  - Read - The ability to read a given property set (including allProperties).
  - Update - The ability to update a given property set (including allProperties).
  - Delete - The ability to delete a given entity.
  - AllTasks - Represents all CRUD operations (create, read, update, and delete). 

### condition property
Conditions define constraints that must be met. For example, a requirement that the principal be an "owner" of the target. The following are the supported conditions:

- Self: "@Subject.objectId == @Resource.objectId"
- Owner: "@Subject.objectId Any_of @Resource.owners"

The following is an example of a role permission with a condition.

```json
"rolePermissions": [
        {
            "allowedResourceActions": [
                "microsoft.directory/applications/basic/update",
                "microsoft.directory/applications/credentials/update"
            ],
            "condition":  "@Subject.objectId Any_of @Resource.owners"
        }
    ]

```

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRolePermission",
  "baseType": null
}-->

```json
{
  "allowedResourceActions": ["String"],
  "condition": "String"
}
```
## See also

- [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) - For information about permissions for built-in directory roles.
- [Application registration subtypes and permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/roles-custom-available-permissions) -  For information about permissions that are available for custom directory roles. 

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRolePermission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
