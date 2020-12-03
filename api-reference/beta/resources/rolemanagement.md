---
title: "roleManagement resource type"
description: "RBAC role management resource"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# roleManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft 365 RBAC role management entity. Provides access to role definitions and role assignments surfaced from RBAC providers. Currently directory (Azure AD) and  deviceManagement (Intune) providers are supported. 

For more information, see: 
* [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles).
* [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control)

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|directory|[rbacApplication](rbacapplication.md)| Read-only. Nullable.|
|deviceManagement|[rbacApplicationMultiple](rbacapplicationmultiple.md)| Read-only. Nullable.|

## JSON representation

None.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roleManagement resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->