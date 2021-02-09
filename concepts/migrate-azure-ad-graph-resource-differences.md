---
title: "Resource type differences between Azure AD Graph and Microsoft Graph"
description: "Describes differences between resources in Azure AD Graph and resources in Microsoft Graph in order to help migrate apps."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Resource type differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

When migrating apps from Azure AD Graph to Microsoft Graph, be aware that some resources have different names and different types.  For example, if your Azure AD Graph app uses the **tenantInfo** resource, you'll need to update your code to refer to [organization](/graph/api/resources/organization?view=graph-rest-1.0) instead.

The following table highlights differences between Azure AD Graph and Microsoft Graph resources.  It shows resources that have different names or are not available; it also highlights resources available in the beta version of Microsoft Graph but not in the v1.0 version.

If a resource is **not** shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with the same name as in Azure AD Graph.

> **NOTE**: Resource type names in Azure AD Graph are Pascal-cased, whereas in Microsoft Graph they are camel-cased.

|Azure AD Graph <br>(v1.6) resource |Microsoft Graph<br>resource|Comments|
|---|---|---|
| [CertificateAuthorityInformation](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[certificateAuthority](/graph/api/resources/certificateauthority?view=graph-rest-beta)<br>v1.0&nbsp;-&nbsp;[certificateAuthority](/graph/api/resources/certificateauthority?view=graph-rest-1.0) | |
| [Contact](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[orgContact](/graph/api/resources/orgContact?view=graph-rest-beta)<br>v1.0&nbsp;-&nbsp;[orgContact](/graph/api/resources/orgContact?view=graph-rest-1.0) | |
| [DirectoryLinkChange](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;_New&nbsp;approach_ <br>v1.0&nbsp;-&nbsp;_New&nbsp;approach_ | Delta query supports relationship change detection with a mechanism that doesn't require this resource. Please see [Feature differences between Azure AD Graph and Microsoft Graph](migrate-azure-ad-graph-feature-differences.md). |
| [OAuth2Permission](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[permissionScope](/graph/api/resources/permissionScope?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[permissionScope](/graph/api/resources/permissionScope?view=graph-rest-1.0) ||
 [Policy](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[policies](/graph/api/resources/policy-overview?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[policies](/graph/api/resources/policy-overview?view=graph-rest-1.0)| Each type of policy has a unique type name and structure, under the **policies** URL path segment, in Microsoft Graph. In Azure AD Graph this was a single policy type. For example, for Azure AD Graph you would work with the **Policy** resource, and set the **type** property to `TokenIssuancePolicy`, while in Microsoft Graph this would be the **tokenIssuancePolicy** resource. |
| [ProvisioningError](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;_Not available_ <br> v1.0&nbsp;-&nbsp;_Not available_ | This resource is deprecated.  However, a new resource describing any AD Connect related provisioning errors can be found in [onPremisesProvisioningError](/graph/api/resources/onPremisesProvisioningError?view=graph-rest-1.0). |
| [ServiceEndpoint](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[endpoint](/graph/api/resources/endpoint?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[endpoint](/graph/api/resources/endpoint?view=graph-rest-1.0) | **endpoints** are only available as part of the [group](/graph/api/resources/group?view=graph-rest-beta) resource in beta, and the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0) resource in both beta and v1.0.|
| [SignInName](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;_New approach_ <br> v1.0&nbsp;-&nbsp;_New approach_ | New modeling for the identifiers used to sign into a user account. See [objectIdentity](/graph/api/resources/objectIdentity?view=graph-rest-1.0) resource type for more details. Supports Azure AD B2C scenarios. |
| [TenantDetail](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[organization](/graph/api/resources/organization?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[organization](/graph/api/resources/organization?view=graph-rest-1.0) | |
| [TrustedCasForPasswordAuth](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedcuthconfiguration?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedcuthconfiguration?view=graph-rest-1.0) | |
| [UserIdentity](/previous-versions/azure/ad/graph/api/entity-and-complex-type-reference) | beta&nbsp;-&nbsp;[objectIdentity](/graph/api/resources/objectidentity?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[objectIdentity](/graph/api/resources/objectidentity?view=graph-rest-1.0) |  New modeling for the identifiers used to sign into a user account, called **objectIdentity**. Supports Azure AD B2C scenarios. |

## Next Steps

- Learn about [entity property differences](migrate-azure-ad-graph-property-differences.md) between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.