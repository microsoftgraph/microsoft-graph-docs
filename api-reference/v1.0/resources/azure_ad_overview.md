# Working with Azure Active Directory resources in Microsoft Graph

With Microsoft Graph, you can access [Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/active-directory-whatis) resources that you can use to enable several different scenarios. This includes managing administrator (directory) roles, inviting external users to an organization, and, if you are [Cloud Solution Provider (CSP)](https://partner.microsoft.com/cloud-solution-provider), managing your customer's data. Microsoft Graph also provides several methods that can be used by many kinds of apps; for example, to discover information about transitive group and role memberships of users. 

> **Note**: Some Azure AD resources are documented in other sections of the API reference. For more information, see [users](users.md) and [groups](group.md).


## Authorization
 
To call the Microsoft Graph APIs on Azure AD resources, your app will need the appropriate permissions.  Many of the APIs exposed on Azure AD resources require one of the [_Directory_ permissions](../../../concepts/permissions_reference.md#directory-permissions).  _Directory_ permissions are highly privileged and always require administrator consent. 

There are two kinds of permissions: delegated and application. If your app is calling an API on behalf of a user, it will need delegated permissions. If it is calling an API as itself without a signed-in user, it will need application permissions. This latter scenario is generally the case with back-end services or daemons. For more information about delegated and application permissions, see [Permissions](../../../concepts/permissions_reference.md). 

Finally, if your app is acting on behalf of a user, that user will likely need to be a member of an appropriate [administrator role](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles) for your app to successfully call many of the Azure AD APIs.

## Common use cases 

The following table lists some common scenarios that Azure AD resources can be used for.

| Use cases		   | REST resources	| See also |
|:---------------|:--------|:----------|
| **Directory object and methods** | | |
| `directoryObject` is the base class that many directory resources, like users and groups, inherit from. Microsoft Graph exposes several methods that you can use to discover information about users, groups, and other directory objects. For example, you can check for transitive membership in a list of groups, return all the groups and directory roles that a directory object is a transitive member of, or get all the resources of a specified type (like user or group) from a list of generic resource IDs. | [directoryObject](../resources/directoryobject.md) |  |
| **Manage directory (administrator) roles** | | |
| Activate directory roles in an Azure AD tenant and manage user memberships in directory roles. Directory roles are also known as administrator roles. | [directoryRole](../resources/directoryrole.md) <br/>[directoryRoleTemplate](../resources/directoryroletemplate.md) | For more information about directory (admistrator) roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles). |
| **Manage devices** | | |
| Manage devices registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multi-factor authentication. | [device](../resources/device.md) | For more information about Device Registration Service, see [Getting started with Azure Active Directory device registration](https://docs.microsoft.com/azure/active-directory/active-directory-device-registration-overview).<br/><br/> For more information about Microsoft Intune, see [What is InTune?](https://docs.microsoft.com/intune-classic/understand-explore/introduction-to-microsoft-intune) and [Enroll devices for management in InTune](https://docs.microsoft.com/intune-classic/deploy-use/enroll-devices-in-microsoft-intune). |
| **Partner tenant management** | | |
| Get information about partnerships with customer tenants. | [contract](../resources/contract.md) | Exists in partner tenants only. Partner tenants are Azure AD tenants that belong to Microsoft partners who are either part of [Microsoft Cloud Solution Provider](https://partnercenter.microsoft.com/partner/programs), Office 365 Syndication, or Microsoft Advisor partner programs. <br/><br/>For more information about managing customer data through Microsoft Graph as a Cloud Solution Provider, see [Call Microsoft Graph from a Cloud Solution Provider application](../../../concepts/auth_cloudsolutionprovider.md). |
| Manage domains associated with a tenant. Domain operations enable registrars to automate domain association for services such as Office 365. | [domain](../resources/domain.md) | For more information, see [Add a custom domain name to Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-domains-add-azure-portal). |
| **Tenant management** | | |
| Get information about an organization like its business address, technical and notification contacts, the service plans that it's subscribed to, and the domains associated with it. | [organization](../resources/organization.md) |  |
| Get information about the service SKUs that a company is subscribed to. | [subscribedSku](../resources/subscribedsku.md) |  |
| Invite external (guest) users to an organization. | [invitation](../resources/invitation.md) | For more information, see [What is Azure AD B2B collaboration?](https://docs.microsoft.com/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b). |



## Next steps
Directory resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph: 

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/graph/examples#partners).


