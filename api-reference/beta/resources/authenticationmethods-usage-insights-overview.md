---
title: "Working with the authentication methods usage report API"
description: "The authentication methods usage report helps an organization understand how their end users are using Azure Active Directory capabilities such as self-service password reset and multi-factor authentication (MFA)."
localization_priority: Normal
author: "besiler"
ms.prod: "microsoft-identity-platform"
doc_type: "conceptualPageType"
---

# Working with the authentication methods usage report API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authentication methods usage reports help you understand how users in your organization use Azure Active Directory (Azure AD) capabilities, such as self-service password rest and multi-factor authentication (MFA).

These reports provide information such as:

- Which authentication methods are more successful for your organization. 
- What types of errors end users are running into.
- What campaign you need to run to help your end users adopt the use of self-service password rest and MFA.

## Common requests

The following table lists some common requests that you can use with this API.

| Operation | Try in Graph Explorer | Description |
| --------- | --- | ----------- |
| [getCredentialUserRegistrationcount](/graph/api/resources/credentialuserregistrationcount?view=graph-rest-beta) | [GET /credentialuserregistrationcount](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUserRegistrationcount()&version=beta) | Get the number of users registered for self-service password reset and MFA. |
| [getCredentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta) | [GET /credentialusagesummary](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUsageSummary&version=beta) | Get the number of users using self-service password reset. |
| [credentialUserRegistrationDetails](/graph/api/resources/credentialuserregistrationdetails?view=graph-rest-beta) | [GET /credentialuserregistrationdetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialUserRegistrationDetails&version=beta) | Get the user details for self-service password reset and MFA registration activities. |
| [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta) | [GET /usercredentialusagedetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/userCredentialUsageDetails&version=beta) | Get user details for all self-service password reset activities. |

## Licenses

Usage reports are available for licensed features that take advantage of self-service password reset and MFA in your tenant.

## Next steps

- Learn how to [deploy Azure Active Directory self-service password reset](/azure/active-directory/authentication/howto-sspr-deployment).
- Learn how to deploy [Azure Active Directory MFA](/azure/active-directory/authentication/howto-mfa-getstarted).
- Learn how to enable [combined security info registration](/azure/active-directory/authentication/howto-registration-mfa-sspr-combined).