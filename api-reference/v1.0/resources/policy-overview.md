---
title: "policy API overview"
description: "Azure Active Directory uses policies to control Azure AD feature behaviors in your organization."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "conceptualPageType"
---

# Azure AD policy overview

Namespace: microsoft.graph



Azure Active Directory (Azure AD) uses policies to control Azure AD feature behaviors in your organization. Policies are custom rules that you can enforce on applications, service principals, groups, or on the entire organization they are assigned to.

## What policies are available?

| Policy type       | Description | Examples |
|:-------------|:------------|:------------|
|[activityBasedTimeoutPolicies](activityBasedTimeoutPolicy.md)| Represents a policy that controls automatic sign-out for web sessions after a period of inactivity, for applications that support activity-based timeout functionality.| Configure the Azure portal to have an inactivity timeout of 15 minutes. |
|[homeRealmDiscoveryPolicies](homeRealmDiscoveryPolicy.md)| Represents a policy to control Azure Active Directory authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains.| Configure all users to skip home realm discovery and be routed directly to ADFS for authentication. |
|[tokenLifetimePolicies](tokenlifetimepolicy.md)|Represents the lifetime duration of access tokens used to access protected resources.| Configure a particularly sensitive application with a shorter than default token lifetime.|
|[tokenIssuancePolicy](tokenIssuancePolicy.md)|Represents the policy to specify the characteristics of SAML tokens issued by Azure AD.| Configure the signing algorithm or SAML token version to be used to issue the SAML token.

## Next steps

* Review the different policy resouce types listed above and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
