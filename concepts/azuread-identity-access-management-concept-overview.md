# Azure AD identity and access management API overview

Azure Active Directory (Azure AD) helps centralize identity and access management (IAM) to enable secure and productive access between apps, devices, services, and infrastructure. Organizations can use Azure AD to manage identities and control access in on-premises, hybrid, and cloud environments.  

You can use the Azure AD REST APIs in Microsoft Graph to create unique workflows between Azure AD [resources](../api-reference/v1.0/resources/azure_ad_overview.md) and third-party services.

## Why use the Azure AD APIs?

More than 15 million organizations use Azure AD while subscribing to Microsoft cloud services like Office 365, Microsoft Azure, Enterprise Mobility Suite, or Microsoft 365.  

Enterprise developers use Microsoft Graph to integrate Azure AD identity management and other services to automate administrative workflows, such as employee onboarding (and termination), profile maintenance, license deployment, and more.

For many enterprise developers, Microsoft Graph and Azure AD help "lift and shift" existing applications to the cloud, speeding an organization's digital transformation. You can take advantage of Azure AD capabilities to add access control mechanisms to applications, including verifying a user's group membership, directory role, or administrative unit membership.

You can use Microsoft Graph and Azure AD as a way to quickly and easily reach more than 15 million organizations, including 90% of the Fortune 500 companies that already use Azure AD services. Integrated applications feature seamless sign-in experiences and can use existing organizational data to create personalized experiences.  

You can use the Azure AD APIs in Microsoft Graph to query the user's profile, find other users, manage organizational relationships, track assignments, or create original solutions that incorporate existing organizational data. These APIs provide a solid foundation to seamlessly integrate custom business applications into an organization's existing digital services.

### Access users and groups

You can use Azure AD APIs in Microsoft Graph to:

- Look up and manage [user profile](../api-reference/v1.0/resources/user.md) information for users in your organization, such as name, photo, email address, job title, office location, and more.
- Create [groups](../api-reference/v1.0/resources/groups-overview.md) for projects and teams in your organization. Add and remove members from the group to control access to resources. (Dynamic groups can automatically change membership based on user property values.)
- To control access, you can check for [transitive membership](../api-reference/v1.0/api/user_checkmembergroups.md) in a list of groups or get all the resources of a specified type (like user or group) from a list of [generic resource IDs](../api-reference/v1.0/api/directoryobject_getbyids.md).

### Manage directory roles

You can assign users to predefined Azure AD administrative [directory roles](../api-reference/v1.0/resources/directoryrole.md), which grants permission to perform specific tasks.

### Manage devices

[Manage devices](https://docs.microsoft.com/en-us/azure/active-directory/device-management-introduction.md) registered in the organization. Devices are registered to users and include items like laptops, desktops, tablets, and mobile phones. Devices are typically created in the cloud using the Device Registration Service or by Microsoft Intune. They're used by conditional access policies for multifactor authentication.

### Partner tenant management

Microsoft partners that resell and manage Microsoft Online Services (such as Office 365, Microsoft Azure, and CRM Online) can view the [organization tenants](../api-reference/v1.0/resources/contract.md) they currently manage.

You can also [manage domains](../api-reference/v1.0/resources/domain.md) associated with a tenant. Domain operations enable Microsoft partners to automate domain registration for services such as Office 365.

### Tenant management

Azure AD APIs for tenant management allow you to:

- Get information about an [organization](../api-reference/v1.0/resources/organization.md), such as its business address, technical and notification contacts, active service subscriptions, and the domains associated with it.
- Get information about the [service SKUs](../api-reference/v1.0/resources/subscribedsku.md) that a company is subscribed to.
- [Invite external](../api-reference/v1.0/resources/invitation.md) (guest) users to an organization.

### Monitor identity risks (preview)

Most security breaches are the result of attackers stealing a user’s identity, and attackers have become terrifyingly effective in taking advantage of third-party breaches, password spray attacks, and sophisticated phishing attacks. This means you need to protect all your user accounts from these attacks and proactively prevent compromised identities from being abused.

Azure AD uses adaptive machine learning algorithms and heuristics to detect anomalies that indicate potentially compromised accounts. Using this data, Azure AD Identity Protection protects your users with risk-based conditional access policies and generates reports and alerts on its detections.

Today, Microsoft Graph gives easy access to customers of Azure AD Premium P2 to [query risk events detected by Identity Protection](../api-reference/beta/resources/identityprotection_root.md), including the risk event’s type, severity, date, time, location, impacted user, and more. Customers can then use those events in SIEM systems and security applications.

### Activate users into privileged roles (preview)

You can get secure access to resources by activating administrative privileges on-demand. [Privileged Identity Management](../api-reference/beta/resources/privilegedidentitymanagement_root.md) is featured in Azure AD Premium P2.

### Manage user access reviews (preview)

You can configure access reviews of group memberships and application access. [Access reviews](../api-reference/beta/resources/accessreviews_root.md) is featured in Azure AD Premium P2.

## API reference
Looking for the API reference for this service?

- [Azure AD identity and access management API in Microsoft Graph v1.0](../api-reference/v1.0/resources/azure_ad_overview.md)
- [Azure AD identity and access management API in Microsoft Graph beta](../api-reference/beta/resources/azure_ad_overview.md)

## Next steps

- Find out how to [Use the Azure AD REST APIs](../api-reference/v1.0/resources/azure_ad_overview.md).
- Use Azure AD to [authenticate](auth_overview.md) to Microsoft Graph. 
- Integrate [Azure AD sign-in](https://azure.microsoft.com/en-us/develop/identity/signin/) into your app or website.
- See the [Changelog](changelog.md) for information about what's new in the Azure AD APIs.
- Explore [examples](https://developer.microsoft.com/graph/graph/examples) for more ideas about how to use Microsoft Graph.
