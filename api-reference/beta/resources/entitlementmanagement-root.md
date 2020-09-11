---
title: "Working with the Azure AD entitlement management API"
description: "Govern access to resources including groups, apps and sites through Azure AD entitlement management"
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "conceptualPageType"
---

# Working with the Azure AD entitlement management API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) entitlement management can help you manage access to groups, applications, and SharePoint Online sites for internal users as well as users outside your organization.

By creating access packages with the roles users need to have across those resources, and defining policies for who can request an access package and how long they can have an assignment to an access package, you can govern the lifecycle of access for both internal and external users.

The entitlement management resource types include:

- [accessPackage](accesspackage.md): Defines the collections of resource roles and the policies for how one or more users may obtain access to those resources.
- [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md): Specifies the policy by which subjects may request or be assigned an access package via an access package assignment.
- [accessPackageAssignmentRequest](accesspackageassignmentrequest.md): Created by a user who wishes to obtain an access package assignment.
- [accessPackageAssignment](accesspackageassignment.md): An assignment of an access package to a particular subject, for a period of time.
- [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md): Indicates the resource-specific role which a subject has been assigned through an access package assignment.
- [accessPackageCatalog](accesspackagecatalog.md): A container for access packages.
- [accessPackageResourceRequest](accesspackageresourcerequest.md): A request to add a resource to an access package catalog.
- [connectedOrganization](connectedorganization.md): A connected organization for external users who can request access.
- [entitlementManagementSettings](entitlementmanagementsettings.md): Tenant-wide settings for Azure AD entitlement management.

For a tutorial that shows you how to use entitlement management to create a package of resources that internal users can self-service request, see [Create an access package using Microsoft Graph APIs](/graph/tutorial-access-package-api).

Note that the entitlement management feature, including the API, is included in Azure AD Premium P2. The tenant where entitlement management is being used must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.

## Methods

The following table lists the methods that you can use to interact with entitlement management-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
| [Get](../api/entitlementmanagementsettings-get.md) | [entitlementManagementSettings](entitlementmanagementsettings.md) | Read the properties of an **entitlementManagementSettings** object. |
| [Update](../api/entitlementmanagementsettings-update.md) | [entitlementManagementSettings](entitlementmanagementsettings.md) | Update the properties of an **entitlementManagementSettings** object. |
| [List accessPackages](../api/accesspackage-list.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of **accessPackage** objects. |
| [Create accessPackage](../api/accesspackage-post.md) | [accessPackage](accesspackage.md) | Create a new **accessPackage** object. |
| [Get accessPackage](../api/accesspackage-get.md) | [accessPackage](accesspackage.md) | Read properties and relationships of an **accessPackage** object. |
| [Update accessPackage](../api/accesspackage-update.md)|None | Update the properties of an **accesspackage** object. |
| [Delete accessPackage](../api/accesspackage-delete.md) | | Delete **accessPackage**. |
| [List accessPackageResourceRoleScopes](../api/accesspackage-list-accesspackageresourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve a list of **accessPackageResourceRoleScope** objects for an access package. |
| [Create accessPackageResourceRoleScope](../api/accesspackage-post-accesspackageresourcerolescopes.md) | | Create a new **accessPackageResourceRoleScope** object for an access package. |
| [List accessPackageAssignmentPolicies](../api/accesspackageassignmentpolicy-list.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection | Retrieve a list of **accessPackageAssignmentPolicy** objects. |
| [Create accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-post.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)| Create a new **accessPackageAssignmentPolicy** object. |
| [Get accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Read properties and relationships of an **accessPackageAssignmentPolicy** object. |
| [Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md)|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Update the properties of an **accessPackageAssignmentPolicy** object. |
| [Delete accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-delete.md) | | Delete an **accessPackageAssignmentPolicy**. |
| [List accessPackageAssignmentRequests](../api/accesspackageassignmentrequest-list.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) collection | Retrieve a list of **accessPackageAssignmentRequest** objects. |
| [Create accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-post.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Create a new **accessPackageAssignmentRequest**. |
| [Get accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-get.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Read properties and relationships of an **accessPackageAssignmentRequest** object. |
| [List accessPackageAssignments](../api/accesspackageassignment-list.md) | [accessPackageAssignment](accesspackageassignment.md) collection | Retrieve a list of **accessPackageAssignment** objects. |
| [List accessPackageAssignmentResourceRoles](../api/accesspackageassignmentresourcerole-list.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md) collection | Retrieve a list of **accessPackageAssignmentResourceRole** objects. |
| [Get accessPackageAssignmentResourceRole](../api/accesspackageassignmentresourcerole-get.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md)  | Retrieve a **accessPackageAssignmentResourceRole** object. |
| [List accessPackageCatalogs](../api/accesspackagecatalog-list.md) | [accessPackageCatalog](accesspackagecatalog.md) collection | Retrieve a list of **accessPackageCatalogs** objects. |
| [Create accessPackageCatalog](../api/accesspackagecatalog-post.md) | [accessPackageCatalog](accesspackagecatalog.md) | Create a new **accessPackageCatalog** object. |
| [Get accessPackageCatalog](../api/accesspackagecatalog-get.md) | [accessPackageCatalog](accesspackagecatalog.md) | Read properties and relationships of an **accessPackageCatalog** object. |
| [Update accessPackageCatalog](../api/accesspackagecatalog-update.md)|None | Update the properties of an **accessPackageCatalog** object. |
| [Delete accessPackageCatalog](../api/accesspackagecatalog-delete.md) | | Delete an **accessPackageCatalog**. |
| [List accessPackageCatalog resources](../api/accesspackagecatalog-list-accesspackageresources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of **accessPackageResource** objects. |
| [List accessPackageCatalog resource roles](../api/accesspackagecatalog-list-accesspackageresourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of **accessPackageResourceRole** objects. |
| [List accessPackageResourceRequests](../api/accesspackageresourcerequest-list.md) | [accessPackageResourceRequest](accesspackageresourcerequest.md) collection | Read properties and relationships of **accessPackageResourceRequest** objects. |
| [Create accessPackageResourceRequest](../api/accesspackageresourcerequest-post.md) | [accessPackageCatalog](accesspackageresourcerequest.md) | Create a new **accessPackageResourceRequest** object. |
| [List connectedOrganizations](../api/connectedorganization-list.md) | [connectedOrganization](connectedorganization.md) collection | Retrieve a list of **connectedOrganization** objects. |
| [Create connectedOrganization](../api/connectedorganization-post.md) | [connectedOrganization](connectedorganization.md) | Create a new **connectedOrganization** object. |
| [Get connectedOrganization](../api/connectedorganization-get.md) | [connectedOrganization](connectedorganization.md) | Read properties and relationships of a **connectedOrganization** object. |
| [Update connectedOrganization](../api/connectedorganization-update.md) |None | Update a **connectedOrganization**. |
| [Delete connectedOrganization](../api/connectedorganization-delete.md) |None | Delete a **connectedOrganization**. |
|[List internalSponsors](../api/connectedorganization-list-internalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a **connectedOrganization's** internal sponsors. |
|[List externalSponsors](../api/connectedorganization-list-externalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a **connectedOrganization's** external sponsors. |
|[Add internalSponsors](../api/connectedorganization-post-internalsponsors.md) | None | Add a user or group to a **connectedOrganization's** internal sponsors. |
|[Add externalSponsors](../api/connectedorganization-post-externalsponsors.md) | None | Add a user or group to a **connectedOrganization's** external sponsors. |
|[Remove internalSponsors](../api/connectedorganization-delete-internalsponsors.md) | None | Remove a user or group from a **connectedOrganization's** internal sponsors. |
|[Remove externalSponsors](../api/connectedorganization-delete-externalsponsors.md) | None | Remove a user or group from a **connectedOrganization's** external sponsors. |

## Types

- [requestorSettings](requestorsettings.md), [approvalSettings](approvalsettings.md) and [assignmentReviewSettings](assignmentreviewsettings.md) - Used in an [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) to specify who can request, who approves, and who reviews access package assignment requests on that policy.
- [approvalStage](approvalstage.md) - Used in the [approvalSettings](approvalsettings.md) to specify the primary, backup, and escalation approvers.
- [userSet](userset.md) subtypes [singleUser](singleuser.md), [groupMembers](groupmembers.md), [connectedOrganizationMembers](connectedorganizationmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), and [externalSponsors](externalsponsors.md) - Used in [requestorSettings](requestorsettings.md), [approvalStage](approvalstage.md) and [assignmentReviewSettings](assignmentreviewsettings.md).
- [accessPackageSubject](accesspackagesubject.md) - Used in the [accessPackageAssignment](accesspackageassignment.md) as a subject user who has an access package assignment.
- [identitySource](identitysource.md) - used in the [connectedOrganization](connectedorganization.md), one of [azureActiveDirectoryTenant](azureactivedirectorytenant.md), [domainIdentitySource](domainidentitysource.md) or [externalDomainFederation](externaldomainfederation.md).

## See also

 - [What is Azure AD entitlement management?](https://docs.microsoft.com/azure/active-directory/governance/entitlement-management-overview)



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
