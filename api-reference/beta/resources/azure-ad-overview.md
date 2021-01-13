---
title: "Working with Azure Active Directory resources in Microsoft Graph"
description: "Microsoft Graph for Azure Active Directory (Azure AD) provides REST APIs to help manage your organization, resources, and assets."
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: "microsoft-identity-platform"
author: "dkershaw10"
---

# Working with Azure Active Directory resources in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can access [Azure Active Directory (Azure AD)](/azure/active-directory/active-directory-whatis) resources to enable scenarios like managing administrator (directory) roles, inviting external users to an organization, and, if you are a [Cloud Solution Provider (CSP)](https://partner.microsoft.com/cloud-solution-provider), managing your customer's data. Microsoft Graph also provides methods apps can use, for example, to discover information about users' transitive group and role memberships.

> **Note**: Some Azure AD resources are documented in other sections of the API reference. For more information, see [Users](users.md) and [Groups](group.md).


## Authorization

To call the Microsoft Graph APIs on Azure AD resources, your app will need the appropriate permissions. Many of the APIs exposed on Azure AD resources require one of the [_Directory_ permissions](/graph/permissions-reference#directory-permissions). Directory permissions are highly privileged and always require administrator consent.

If your app is acting on behalf of a user (delegated permissions), that user will likely need to be a member of an appropriate [administrator role](/azure/active-directory/active-directory-assign-admin-roles) for your app to successfully call many of the Azure AD APIs.

For more information about permissions, including delegated and application permissions, see [Permissions](/graph/permissions-reference).

## Common use cases

The following table lists some common use cases for Azure AD resources.

| **Use cases**        | **REST resources** | **See also** |
|:-----------------|:--------|:----------|
| **Directory object and methods** | | |
| `directoryObject` is the base class that many directory resources, like users and groups, inherit from. Microsoft Graph exposes several methods that you can use to discover information about users, groups, and other directory objects. For example, you can check for transitive membership in a list of groups, return all the groups and directory roles that a directory object is a transitive member of, or get all the resources of a specified type (like user or group) from a list of generic resource IDs. | [directoryObject](../resources/directoryobject.md) | N/A |
| **Manage directory (administrator) roles, administrative units, directory settings, and policy** | | |
| Activate directory roles in an Azure AD tenant and manage user memberships in directory roles. Directory roles are also known as administrator roles. | [directoryRole](../resources/directoryrole.md) <br/>[directoryRoleTemplate](../resources/directoryroletemplate.md) |[Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles)|
| Manage administrative units. Directory roles delegate tenant-wide authority to their members. An administrator can create and manage administrative units to delegate more granularly scoped administrative authority to users. | [administrativeUnit](../resources/administrativeunit.md) | [Administrative units management in Azure AD](/azure/active-directory/active-directory-administrative-units-management) |
| Apply predefined directory settings across a tenant or to individual resource instances. Currently, only settings for Microsoft 365 groups are supported. Directory settings control behaviors like blocked word lists for group display names, whether guest users are allowed to be group owners, and much more. | [directorySetting](../resources/directorysetting.md) <br/>[directorySettingTemplate](../resources/directorysettingtemplate.md)| [Azure Active Directory cmdlets for configuring group settings](/azure/active-directory/active-directory-accessmanagement-groups-settings-cmdlets)|
| Apply Azure AD policies to applications, service principals, groups, or the entire organization. Policies for claims mapping, token issuance, token lifetime, home realm discovery and more are supported.  | [Available policies](../resources/policy-overview.md) | N/A |
| **Secure privileged access to Azure AD** | | |
| Manage and monitor time-bound privileged access to directory and Azure resources for administrators and IT professionals with Privileged Identity Management (PIM). | [Privileged Identity Management API](../resources/privilegedidentitymanagement-root.md) | [What is Azure AD Privileged Identity Management?](/azure/active-directory/active-directory-privileged-identity-management-configure)|
| Monitor identity risk events like users signing in from malware-infected devices or from unfamiliar locations. | [Identity Protection Service API](../resources/identityprotection-root.md) | [Azure Active Directory Identity Protection](/azure/active-directory/active-directory-identityprotection)<br/><br/>[Azure Active Directory risk events](/azure/active-directory/active-directory-reporting-risk-events) |
| **Manage devices** | | |
| Manage devices registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multifactor authentication. | [device](../resources/device.md) | [Getting started with Azure Active Directory device registration](/azure/active-directory/active-directory-device-registration-overview) |
| **App management** | | |
| Manage app configuration in a developer tenant. | [application](../resources/application.md) | [Application and service principal objects in Azure Active Directory](/azure/active-directory/develop/active-directory-application-objects) |
| Manage apps installed in a tenant. | [servicePrinicpal](../resources/serviceprincipal.md) | [Application and service principal objects in Azure Active Directory](/azure/active-directory/develop/active-directory-application-objects) |
| Manage permissions consented by users and administrators on apps installed in a tenant. | [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) | N/A |
| Manage user, group, and service principal role memberships on apps installed in a tenant. | [appRoleAssignment](../resources/approleassignment.md) | N/A |
| **Partner tenant management** | | |
| Get information about partnerships with customer tenants. <br/><br/>**Note:** This applies to partner tenants only. Partner tenants are Azure AD tenants that belong to Microsoft partners who are either part of the [Microsoft Cloud Solution Provider](https://partnercenter.microsoft.com/partner/programs), Office 365 Syndication, or Microsoft Advisor partner programs.| [contract](../resources/contract.md) | [Call Microsoft Graph from a Cloud Solution Provider application](/graph/auth-cloudsolutionprovider) |
| Manage domains associated with a tenant. Domain operations enable registrars to automate domain association for services such as Microsoft 365. | [domain](../resources/domain.md) | [Add a custom domain name to Azure Active Directory](/azure/active-directory/active-directory-domains-add-azure-portal) |
| **Tenant management** | | |
| Get information about an organization, such as its business address, technical and notification contacts, the service plans that it's subscribed to, and the domains associated with it. | [organization](../resources/organization.md) | N/A |
| Get information about the service SKUs that a company is subscribed to. | [subscribedSku](../resources/subscribedsku.md) | N/A |
| Invite external (guest) users to an organization. | [invitation](../resources/invitation.md) | [What is Azure AD B2B collaboration?](https://docs.microsoft.com/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b)|
| Manage branding for the sign-in experience of an organization. | [organizationalbranding](../resources/organizationalbrandingproperties.md) | [Add branding to your organization's Azure Active Directory sign-in page](https://docs.microsoft.com/azure/active-directory/fundamentals/customize-branding)|
| **Access reviews** | | |
| Ensure group memberships and application access rights are correct with access reviews. | [access reviews API](../resources/accessreviews-root.md) |[Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
Directory resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).
