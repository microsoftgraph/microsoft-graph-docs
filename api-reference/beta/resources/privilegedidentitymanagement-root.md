---
title: "Privileged Identity Management"
description: "APIs for Azure AD Privileged Identity Management to manage Azure Active Directory roles and Azure resource roles."
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: "governance"
author: "shauliu"
---

# Privileged Identity Management

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Azure Active Directory (Azure AD) Privileged Identity Management (PIM)](/azure/active-directory/privileged-identity-management/pim-configure) is a service that enables you to manage, control, and monitor access to important resources in your organization. This includes access to resources in Azure AD, Azure resources, and other Microsoft Online Services like Microsoft 365 or Microsoft Intune. Microsoft Graph provides APIs that you can use to manage Azure AD roles and Azure resource roles.

- [APIs for Azure AD roles](privilegedidentitymanagement-directory.md)
- [APIs for Azure resource roles](privilegedidentitymanagement-resources.md)

> [!IMPORTANT]
> The API to manage Azure AD roles is deprecated for most tenants except for a few that use an older version of Privileged Identity Management (PIM). For more information about PIM versions, see [Determine your version of PIM](/azure/active-directory/privileged-identity-management/pim-how-to-activate-role?tabs=new#determine-your-version-of-pim). If you are using the new version and are recieving a **TenantEnabledInAadRoleMigration** error, you can wait until a new API is available for PIM functionality under the [unifiedRoleManagement](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) API for Azure AD roles, or you can use the [Azure Resource](/graph/api/resources/privilegedidentitymanagement-resources?view=graph-rest-beta&preserve-view=true) API for your Azure AD roles. To use the **Azure resource** API, replace `azureResources` with `aadRoles` for `provider_id` and use your tenant id for `resource_id`. We recommend that you wait for the new API. You will be able to continue using the **Azure resource** API after the new API is available. Any new features made available in the Azure portal will also be made exclusively available through the new API.

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
