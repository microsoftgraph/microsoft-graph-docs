---
title: "Azure AD authentication methods policy API overview"
description: "Authentication methods policies define which authentication methods can be used by users in Azure AD."
localization_priority: Normal
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "conceptualPageType"
---

# Azure AD authentication methods policies API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Authentication methods policies define [authentication methods](/azure/active-directory/authentication/concept-authentication-methods) and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD). Authentication methods policies that can be managed in Microsoft Graph include FIDO2 Security Keys and Passwordless Phone Sign-in with Microsoft Authenticator app.

The authentication method policies APIs are used to manage policy settings. For example:

* Define the types of FIDO2 security keys that can be used in the Azure AD tenant.
* Define the users or groups of users who are allowed to use FIDO2 Security Keys or Passwordless Phone Sign-in to sign in to Azure AD.
* Define the users or groups of users who should be reminded to set up the Microsoft Authenticator for MFA using push notifications.

## What authentication methods policies can be managed in Microsoft Graph?

|Authentication method policy       | Description |
|:---------------------------|:------------|
|[smsAuthenticationMethodConfiguration](smsAuthenticationMethodConfiguration.md)| Define users who can use Text Message on the Azure AD tenant.|
|[fido2authenticationmethodconfiguration](fido2authenticationmethodconfiguration.md)| Define FIDO2 security key restrictions and users who can use them to sign in to Azure AD.|
|[microsoftauthenticatorauthenticationmethodconfiguration](microsoftauthenticatorauthenticationmethodconfiguration.md)|Define users who can use Microsoft Authenticator on the Azure AD tenant.|
|[emailauthenticationmethodconfiguration](emailauthenticationmethodconfiguration.md)|Define users who can use email OTP on the Azure AD tenant.|
|[passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration](passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) (deprecated)|Define users who can use Passwordless Phone Sign-in to sign in to Azure AD.|
|[temporaryaccesspassauthenticationmethodconfiguration](temporaryaccesspassauthenticationmethodconfiguration.md)|Define users who can use Temporary Access Pass to sign in to Azure AD.|

## Policies available to push users to set up authentication methods:
|Policy       | Description |
|:---------------------------|:------------|
|[authenticationMethodsRegistrationCampaign](authenticationmethodsregistrationcampaign.md)| Define users who should be reminded to set up an authentication method (only supported for the Microsoft Authenticator).|

## Next steps

* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
