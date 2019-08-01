---
title: "Privileged Identity Management"
description: "APIs for Azure AD Privileged Identity Management to manage Azure Active Directory roles and Azure resource roles."
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: ""
author: ""
---

# Privileged Identity Management

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Azure Active Directory (Azure AD) Privileged Identity Management (PIM)](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure) is a service that enables you to manage, control, and monitor access to important resources in your organization. This includes access to resources in Azure AD, Azure resources, and other Microsoft Online Services like Office 365 or Microsoft Intune. Microsoft Graph provides APIs that you can use to manage Azure AD roles and Azure resource roles.

- [APIs for Azure AD roles](privilegedidentitymanagement-directory.md)
- [APIs for Azure resource roles](privilegedidentitymanagement-resources.md)

> [!IMPORTANT]
> The API to manage Azure AD roles will change between June and November of 2019 to follow the namespace and convention of the [Azure resource API](privilegedidentitymanagement-resources.md). Azure AD PIM will become a resource under the Azure resource convention. If this change will directly affect your tenant, please complete the [Graph API change for Azure AD PIM form](https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbRzfBSoy7dT5DqNLWwotW3OFUNFFMRlRLSUtRNEdDWEZHN05LT09IWjkyTS4u) to get additional information, support, and the ability to schedule a time for this API change.

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
