---
title: "Working with the authentication methods usage report API"
description: "The authentication methods usage report helps an organization understand how their end users are using Azure Active Directory capabilities such as self-service password reset and multi-factor authentication (MFA)."
localization_priority: Normal
author: "besiler"
ms.prod: "identity-and-access-reports"
doc_type: "conceptualPageType"
---

# Working with the authentication methods usage report API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authentication methods usage reports help you understand how users in your organization use Azure Active Directory (Azure AD) features such as Multi-Factor Authentication (MFA), Self-Service Password Reset (SSPR), and Passwordless authentication.

These reports provide information such as:

- How many users are registered for each authentication method
- How many users are registered for features such as Multi-Factor Authentication (MFA), Self-Service Password Reset (SSPR), and Passwordless authentication.
- The failure rates of each authentication method 

## Permissions
The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Reports.Read.All<br>AuditLogs.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Reports.Read.All<br>AuditLogs.Read.All|

In order to access the API, [one of the following roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles) is required:

* Reports reader
* Security reader
* Security admin
* Global reader
* Global admin

## Licenses

An Azure AD Premium P1 or P2 license is required to access usage and insights. Azure AD Multi-Factor Authentication and self-service password reset (SSPR) licensing information can be found on the [Azure Active Directory pricing site](https://azure.microsoft.com/pricing/details/active-directory/).

## Common requests

The following table lists some common requests that you can use with this API.

| Operation | Try in Graph Explorer | Description |
| --------- | --- | ----------- |
| [getCredentialUserRegistrationcount](/graph/api/resources/credentialuserregistrationcount?view=graph-rest-beta&preserve-view=true) | [GET /credentialuserregistrationcount](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUserRegistrationcount()&version=beta) | Get the number of users registered for self-service password reset and MFA. |
| [getCredentialUsageSummary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true) | [GET /credentialusagesummary](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUsageSummary&version=beta) | Get the number of users using self-service password reset. |
| [credentialUserRegistrationDetails](/graph/api/resources/credentialuserregistrationdetails?view=graph-rest-beta&preserve-view=true) | [GET /credentialuserregistrationdetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialUserRegistrationDetails&version=beta) | Get the user details for self-service password reset and MFA registration activities. |
| [userCredentialUsageDetails](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true) | [GET /usercredentialusagedetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/userCredentialUsageDetails&version=beta) | Get user details for all self-service password reset activities. |
| [usersRegisteredByFeature](/graph/api/resources/userregistrationfeaturesummary?view=graph-rest-beta&preserve-view=true) | [GET /authenticationMethods/usersRegisteredByFeature](https://developer.microsoft.com/graph/graph-explorer?request=reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')&version=beta) | Get the number of users capable of multi-factor authentication, self-service password reset and passwordless authentication. |
| [usersRegisteredByMethod](/graph/api/resources/userregistrationmethodsummary?view=graph-rest-beta&preserve-view=true) | [GET /authenticationMethods/usersRegisteredByMethod](https://developer.microsoft.com/graph/graph-explorer?request=reports/authenticationMethods/usersRegisteredByMethod(includedUserTypes='all',includedUserRoles='all')&version=beta) | Get the number of users registered for each authentication method. |

## Next steps

- Learn how to [deploy Azure Active Directory self-service password reset](/azure/active-directory/authentication/howto-sspr-deployment).
- Learn how to deploy [Azure Active Directory MFA](/azure/active-directory/authentication/howto-mfa-getstarted).
- Learn how to enable [combined security info registration](/azure/active-directory/authentication/howto-registration-mfa-sspr-combined).
