---
title: "Working with Azure Active Directory resources in Microsoft Graph"
description: "With Microsoft Graph, you can access Azure Active Directory (Azure AD) resources to enable scenarios like managing administrator (directory) roles, inviting external users to an organization, and, if you are a Cloud Solution Provider (CSP), managing your customer's data. Microsoft Graph also provides methods that apps can use to, for example, discover information about users' transitive group and role memberships. "
localization_priority: Priority
author: "dkershaw10"
ms.prod: ""
doc_type: conceptualPageType
---

# Working with Azure Active Directory resources in Microsoft Graph

With Microsoft Graph, you can access [Azure Active Directory (Azure AD)](/azure/active-directory/active-directory-whatis) resources to enable scenarios like managing administrator (directory) roles, inviting external users to an organization, and, if you are a [Cloud Solution Provider (CSP)](https://partner.microsoft.com/cloud-solution-provider), managing your customer's data. Microsoft Graph also provides methods that apps can use to, for example, discover information about users' transitive group and role memberships.

> **Note**: Some Azure AD resources are documented in other sections of the API reference. For more information, see [Users](users.md) and [Groups](group.md).


## Authorization

To call the Microsoft Graph APIs on Azure AD resources, your app will need the appropriate permissions. Many of the APIs exposed on Azure AD resources require one of the [_Directory_ permissions](/graph/permissions-reference#directory-permissions). Directory permissions are highly privileged and always require administrator consent.

If your app is acting on behalf of a user (delegated permissions), that user will likely need to be a member of an appropriate [administrator role](/azure/active-directory/active-directory-assign-admin-roles) for your app to successfully call many of the Azure AD APIs.

For more information about permissions, including delegated and application permissions, see [Permissions](/graph/permissions-reference).

## Common use cases

The following table lists some common use cases for Azure AD resources.

| **Use cases**		   | **REST resources**	| **See also** |
|:---------------|:--------|:----------|
| **Directory object and methods** | | |
| `directoryObject` is the base class that many directory resources, like users and groups, inherit from. Microsoft Graph exposes several methods that you can use to discover information about users, groups, and other directory objects. For example, you can check for transitive membership in a list of groups, return all the groups and directory roles that a directory object is a transitive member of, or get all the resources of a specified type (like user or group) from a list of generic resource IDs. | [directoryObject](../resources/directoryobject.md) | N/A |
| **Manage directory (administrator) roles** | | |
| Activate directory roles in an Azure AD tenant and manage user memberships in directory roles. Directory roles are also known as administrator roles. | [directoryRole](../resources/directoryrole.md) <br/>[directoryRoleTemplate](../resources/directoryroletemplate.md) | [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles) |
| Apply predefined group settings across a tenant or to individual resource instances. Group settings control behaviors like blocked word lists for group display names, whether guest users are allowed to be group owners, and much more. | [groupSetting](../resources/groupsetting.md) <br/>[groupSettingTemplate](../resources/groupsettingtemplate.md)| [Azure Active Directory cmdlets for configuring group settings](/azure/active-directory/active-directory-accessmanagement-groups-settings-cmdlets)|
| **Manage devices** | | |
| Manage devices registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multifactor authentication. | [device](../resources/device.md) | [Getting started with Azure Active Directory device registration](/azure/active-directory/active-directory-device-registration-overview).<br/><br/>[What is InTune?](/intune-classic/understand-explore/introduction-to-microsoft-intune)<br/><br/>[Enroll devices for management in InTune](/intune-classic/deploy-use/enroll-devices-in-microsoft-intune) |
| **Partner tenant management** | | |
| Get information about partnerships with customer tenants.<br/><br/>**Note:** This applies to partner tenants only. Partner tenants are Azure AD tenants that belong to Microsoft partners who are either part of the [Microsoft Cloud Solution Provider](https://partnercenter.microsoft.com/partner/programs), Office 365 Syndication, or Microsoft Advisor partner programs. | [contract](../resources/contract.md) | [Call Microsoft Graph from a Cloud Solution Provider application](/graph/auth-cloudsolutionprovider) |
| Manage domains associated with a tenant. Domain operations enable registrars to automate domain association for services such as Microsoft 365. | [domain](../resources/domain.md) | [Add a custom domain name to Azure Active Directory](/azure/active-directory/active-directory-domains-add-azure-portal) |
| **Tenant management** | | |
| Get information about an organization, such as its business address, technical and notification contacts, the service plans that it's subscribed to, and the domains associated with it. | [organization](../resources/organization.md) | N/A |
| Get information about the service SKUs that a company is subscribed to. | [subscribedSku](../resources/subscribedsku.md) | N/A |
| Invite external (guest) users to an organization. | [invitation](../resources/invitation.md) | [What is Azure AD B2B collaboration?](/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b) |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
Directory resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).