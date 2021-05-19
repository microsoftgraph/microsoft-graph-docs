---
title: "Azure AD authentication methods API overview"
description: "Authentication methods are how users authenticate in Azure AD."
localization_priority: Normal
author: "mmcla"
ms.prod: "identity-and-sign-in"
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
* You can retrieve details of a user's Microsoft Authenticator registration, and delete it if the user has lost the phone.
* You can add an email address to a user. The user can then use that email as part of the Self-Service Password Reset (SSPR) process.
* You can update that email, or delete it from the user.

## What authentication methods can be managed in Microsoft Graph?

|Authentication method       | Description |Examples     |
|:---------------------------|:------------|:------------|
|[passwordAuthenticationMethod](passwordauthenticationmethod.md)| A password is currently the default primary authentication method in Azure AD.|Reset a user's password|
|[phoneAuthenticationMethod](phoneauthenticationmethod.md)|A phone can be used by a user to authenticate using [SMS or voice calls](/azure/active-directory/authentication/concept-authentication-methods#phone-options) (as allowed by policy).|See a user's authentication phone numbers. Add, update, or remove a phone number to a user. Enable or disable a primary mobile phone for SMS sign-in.|
|[fido2AuthenticationMethod](fido2authenticationmethod.md)|A FIDO2 Security Key can be used by a user to sign-in to Azure AD.|Delete a lost FIDO2 Security Key.|
|[microsoftAuthenticatorAuthenticationMethod](microsoftauthenticatorauthenticationmethod.md)|Microsoft Authenticator can be used by a user to sign-in or perform multi-factor authentication to Azure AD|Delete a Microsoft Authenticator authentication method.|
|[passwordlessmicrosoftauthenticatorauthenticationmethod](passwordlessmicrosoftauthenticatorauthenticationmethod.md) (deprecated)|Microsoft Authenticator Passwordless Phone Sign-in can be used by a user to sign-in to Azure AD|Delete a Passwordless Phone Sign-in authentication method.|
|[emailAuthenticationMethod](emailauthenticationmethod.md)|An email address can be user by a user as part of the Self-Service Password Reset (SSPR) process.|See a user's authentication email address. Add, update, or remove an email address to a user.|
|[windowsHelloForBusinessAuthenticationMethod](windowsHelloForBusinessAuthenticationMethod.md)|Windows Hello for Business is a passwordless sign-in method on Windows devices.|See devices where a user has enabled Windows Hello for Business sign-in. Delete a Windows Hello for Business credential.|
|[temporaryaccesspassauthenticationmethod](temporaryaccesspassauthenticationmethod.md)|Temporary Access Pass is a time-limited passcode that serves as a strong credential and allows onboarding of passwordless credentials. | Set a new Temporary Access Pass on a user.|

The following authentication methods are not yet supported in Microsoft Graph beta.

|Authentication method       | Description |Examples     |
|:---------------------------|:------------|:------------|
|Hardware token | Allow users to perform multifactor authentication using a physical device that provides a one-time code. | Get a hardware token assigned to a user.|
|Software token | Allow users to perform multifactor authentication using an application that supporters the OATH specification and provides a one-time code. | Get and delete a software token assigned to a user.|
|Security questions and answers | Allow users to validate their identity when performing a self-service password reset. |Delete a security question a user registered.|
|Default method | Represents the method the user has selected as default for performing multi-factor authentication.| Change a user's default MFA method.|

## Next steps

* Review the authentication method types and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
