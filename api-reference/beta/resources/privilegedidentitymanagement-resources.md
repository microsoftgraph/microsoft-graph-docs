---
title: "Privileged Identity Management - Azure resources"
description: "APIs for Azure AD Privileged Identity Management to manage Azure resources."
localization_priority: Priority
author: "shauliu"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Privileged Identity Management - Azure resources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use [Azure Active Directory (Azure AD) Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) for Azure resources to set up just-in-time access workflow for your Azure infrastructure roles at a management group, subscription, resource group, and resource level. These include built-in roles like Owner and Contributor as well as custom RBAC roles.

## Common use cases for PIM and Azure resources using a REST API

| Use case | Resource | See also |
| --- | --- | --- |
| Onboard a resource (subscriptions, resource group, resource etc.) for PIM management, list all the managed resources requester have access to, and retrieve relationships of a managed resource. | [governanceResource](governanceresource.md) | [Role discovery and management](/azure/active-directory/privileged-identity-management/pim-resource-roles-discover-resources) |
| List all the roles for a resource or get details of a particular role in a specified resource. | [governanceRoleDefinition](governanceroledefinition.md) |  |
| Retrieve all role settings for a resource or make an update to a role setting | [governanceRoleSetting](governancerolesetting.md) | [Configure role setting](/azure/active-directory/privileged-identity-management/pim-resource-roles-configure-role-settings) |
| List and export all role assignments for a resource. | [governanceRoleAssignment](governanceroleassignment.md) | [Export role assignments](/azure/active-directory/privileged-identity-management/azure-pim-resource-rbac#export-role-assignments-with-children) |
| Create or remove an eligible or active role assignment, activate/deactivate an eligible assignment, view a list of pending requests, approve or deny a pending request or cancel your own pending request. | [governanceRoleAssignmentRequest](governanceroleassignmentrequest.md) | [Role Assignment](/azure/active-directory/privileged-identity-management/pim-resource-roles-assign-roles)<br/>[Role activation](/azure/active-directory/privileged-identity-management/pim-resource-roles-activate-your-roles)<br/>[Approve requests](/azure/active-directory/privileged-identity-management/azure-ad-pim-approval-workflow) |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
