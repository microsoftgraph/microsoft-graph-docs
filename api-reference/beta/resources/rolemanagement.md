---
title: "roleManagement resource type"
description: "RBAC role management resource"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# roleManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft 365 RBAC role management entity that provides access to role definitions and role assignments surfaced from various RBAC providers. 

The unified role management API currently supports the following RBAC providers in Microsoft 365:
- cloud PC 
- device management (Intune)
- directory (Azure AD) 
 
For more information, see: 
* [Roles in Microsoft 365, including Azure AD, service-specific and cross-service roles](/azure/active-directory/roles/concept-understand-roles#how-azure-ad-roles-are-different-from-other-microsoft-365-roles) 
* [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles).
* [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control)

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|cloudPC|[rbacApplicationMultiple](rbacapplicationmultiple.md)|Provides access to role definitions and role assignments of a cloud PC RBAC provider. Read-only. Nullable.|
|deviceManagement|[rbacApplicationMultiple](rbacapplicationmultiple.md)| Provides access to role definitions and role assignments of an Intune RBAC provider. Read-only. Nullable.|
|directory|[rbacApplication](rbacapplication.md)|Provides access to role definitions and role assignments of an Azure AD RBAC provider. Read-only. Nullable.|


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
