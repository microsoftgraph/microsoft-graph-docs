---
title: "Azure AD authentication methods API overview"
description: "Authentication methods are how users authenticate in Azure AD."
localization_priority: Normal
author: "mmcla"
ms.prod: "microsoft-identity-platform"
doc_type: "conceptualPageType"
---

# Azure AD authentication methods API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Authentication methods](/azure/active-directory/authentication/concept-authentication-methods) are the ways that users authenticate in Azure Active Directory (AD). Authentication methods in Azure AD include password and phone (for example, SMS and voice calls), which are manageable in Microsoft Graph today, among many others such as FIDO2 security keys and the Microsoft Authenticator app. Authentication methods are used in primary, second-factor, and step-up authentication, and also in the self-service password reset (SSPR) process.

The authentication method APIs are used to manage a user's authentication methods. For example:

* You can add a phone number to a user. The user can then use that phone number for SMS and voice call authentication if they're enabled to use it by policy.
* You can update that number, or delete it from the user.
* You can enable or disable the number for SMS sign-in.
* You can reset a user's password.
* You can retrieve details of a user's FIDO2 Security Key, and delete it if the user has lost the key.
* You can retrieve details of a user's Microsoft Authenticator Passwordless Phone Sign-in registration, and delete it if the user has lost the phone.
* You can add an email address to a user. The user can then use that email as part of the Self-Service Password Reset (SSPR) process.
* You can update that email, or delete it from the user.

## What authentication methods can be managed in Microsoft Graph?

|Authentication method       | Description |Examples     |
|:---------------------------|:------------|:------------|
|[passwordAuthenticationMethod](passwordauthenticationmethod.md)| A password is currently the default primary authentication method in Azure AD.|Reset a user's password|
|[phoneAuthenticationMethod](phoneauthenticationmethod.md)|A phone can be used by a user to authenticate using [SMS or voice calls](/azure/active-directory/authentication/concept-authentication-methods#phone-options) (as allowed by policy).|See a user's authentication phone numbers. Add, update, or remove a phone number to a user. Enable or disable a primary mobile phone for SMS sign-in.|
|[fido2authenticationmethod](fido2authenticationmethod.md)|A FIDO2 Security Key can be used by a user to sign in to Azure AD.|Delete a lost FIDO2 Security Key.|
|[passwordlessmicrosoftauthenticatorauthenticationmethod](passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Microsoft Authenticator Passwordless Phone Sign-in can be used by a user to sign in to Azure AD|Delete a Passwordless Phone Sign-in authentication method.|
|[emailauthenticationmethod](emailauthenticationmethod.md)|An email address can be user by a user as part of the Self-Service Password Reset (SSPR) process.|See a user's authentication email address. Add, update, or remove an email address to a user.|

## Next steps

* Review the authentication method types and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).