---
title: "defaultUserRolePermissions resource type"
description: "Contains certain customizable permissions of default user role."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# defaultUserRolePermissions resource type

Contains certain customizable permissions of default user role in Azure Active Directory (AD).

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| allowedToCreateApps | Boolean | Indicates whether the default user role can create applications. |  
| allowedToCreateSecurityGroups | Boolean | Indicates whether the default user role can create security groups. |  
| allowedToReadOtherUsers | Boolean | Indicates whether the default user role can read other users. |
|permissionGrantPoliciesAssigned|String collection|Indicates if user consent to apps is allowed, and if it is, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format `managePermissionGrantsForSelf.{id}`, where `{id}` is the **id** of a built-in or custom [app consent policy](/azure/active-directory/manage-apps/manage-app-consent-policies). An empty list indicates user consent to apps is disabled. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultUserRolePermissions"
}-->

```json
{
  "allowedToCreateApps": true,
  "allowedToCreateSecurityGroups": true,
  "allowedToReadOtherUsers": true,
  "permissionGrantPoliciesAssigned": ["String"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "defaultUserRolePermissions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
