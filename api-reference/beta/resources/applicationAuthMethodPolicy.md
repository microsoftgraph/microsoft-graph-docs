---
title: "Azure AD application authentication methods API overview"
description: "Application authentication methods is how apps get tokens in Azure AD."
localization_priority: Normal
author: "saumadan"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD application authentication methods API overview | Public preview

Namespace: microsoft.graph

Application authentication methods are ways by which applications can get tokens in Azure Active Directory (AD). Methods such as certificates or passwords secrets can be used to get a token as the application.
Application authentication method policies provide a way for IT admins to establish app development best practices on these methods for the applications in their organizations. For e.g. an admin can configure a policy to block password secrets altogether or create a rule to ensure no password secret exceeds a lifetime threshold set by the organization. These policies can be configured to block all application or service principal objects by setting the enforcement targeting based on the object creation date.

These policies allows organizations to take advantage of the new security hardening features in app management and gradually adopt them in their organization. Enforcement of the restrictions based on application or service principal created datetime provides a way for an organization to review their app security posture, inventory apps and enforce controls per their resourcing schedules. The date based approach allows scaling back to cover existing applications once new applications start to follow the guidance.

There are two types of policy controls:

- Tenant default policies that apply to all applications or service principals.
- Application/Service Principal specific policies which provide the ability to include or exclude certain applications from the tenant policy.

## Organization default app management policy

A tenant default policy is a single object that always exists and disabled by default. Tenant default policy object has the ability to enforce distinct restrictions on application vs service principal objects.
It contains two properties `applicationRestrictions` and `servicePrincipalRestrictions` that allow targeting applications owned by the tenant (application objects) or applications provisioned from another tenant (service principal objects) separately. This provides flexibility to either lock down apps originating within a tenant or help raise the quality bar for apps provisioned from outside the tenant boundary.

## Application/Service Principal policy

Applications or Service principals that need to be excluded from a tenant policy or need a fine grained restrictions could be assigned one of the custom policies defined in app management policy collection. These are a collection of policies that might have varying restrictions or different enforcement dates in them.
Policies created as part of this collection can then be assigned to a specific application or service principal. In a scenario where org default policy and resource policy exist together, policy applied to a resource takes precedence and does not inherit from the tenant policy.
Every application or service object can have only one policy assigned to it.

> [!Note]
> Neither the tenant default policies nor the app/SP specific policies block token issuance for existing applications. So, an application that does not meet the policy requirements will continue to work until it tries to update the application and add a new secret.

## What restrictions can be managed in Microsoft Graph?

The application authentication methods policy APIs offer the following restrictions:

| Restriction      | Description                                           | Examples                                                                                     |
| :--------------- | :---------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| passwordAddition | Restrict password secrets on applications altogether. | Block new passwords on applications created on or after '01/01/2019'.                        |
| passwordLifetime | Enforce a max lifetime range for a password secret.   | Restrict all new password secrets to 30 days max on applications created after '01/01/2019'. |

### Single vs Multi-tenant apps

Single tenant apps should have policy reference applied to the application object.
To restrict multi-tenant apps homed in customer tenant, a policy is applied to the application object where as multi-tenant apps provisioned from another tenant are managed by applying the policy to servicePrincipal object.

### Summary of key difference between Default policy and Resource policies

| Default policy                                                     | Application/Service Principal policy                                                                      |
| ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| Policy always exists.                                              | Policy objects can be created/updated to override default policy.                                         |
| Restrictions are disabled by default for app/SP.                   | Allows customization for Single tenant, Multi tenant(backing app in home tenant or provisioned apps).     |
| Allows only single restriction object definition.                  | Allows multiple policy objects to be defined, but only one can be applied to a resource.                  |
| Allows differentiation between app objects and service principals. | Policy can be applied to either application or service principal object type.                             |
| Applies all restrictions configured for every app/SP.              | Applies only the restrictions configured in the resource policy and does not inherit from default policy. |

## Next steps

- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
