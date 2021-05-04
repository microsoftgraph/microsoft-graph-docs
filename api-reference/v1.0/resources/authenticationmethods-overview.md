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

[Authentication methods](/azure/active-directory/authentication/concept-authentication-methods) are the ways that users authenticate in Azure Active Directory (AD). Authentication methods in Azure AD include password and phone (for example, SMS and voice calls), which are manageable in Microsoft Graph beta endpoint today, among many others such as FIDO2 security keys and the Microsoft Authenticator app. Authentication methods are used in primary, second-factor, and step-up authentication, and also in the self-service password reset (SSPR) process.

The authentication method APIs are used to manage a user's authentication methods. For example:

* You can retrieve details of a user's FIDO2 Security Key, and delete it if the user has lost the key.
* You can retrieve details of a user's Microsoft Authenticator registration, and delete it if the user has lost the phone.

## What authentication methods can be managed in Microsoft Graph?

|Authentication method       | Description |Examples     |
|:---------------------------|:------------|:------------|
|[fido2AuthenticationMethod](fido2authenticationmethod.md)|A FIDO2 Security Key can be used by a user to sign-in to Azure AD.|Delete a lost FIDO2 Security Key.|
|[microsoftAuthenticatorAuthenticationMethod](microsoftauthenticatorauthenticationmethod.md)|Microsoft Authenticator can be used by a user to sign-in or perform multi-factor authentication to Azure AD|Delete a Microsoft Authenticator authentication method.|
|[windowsHelloForBusinessAuthenticationMethod](windowsHelloForBusinessAuthenticationMethod.md)|Windows Hello for Business is a passwordless sign-in method on Windows devices.|See devices where a user has enabled Windows Hello for Business sign-in. Delete a Windows Hello for Business credential.|

## Next steps

* Review the authentication method types and their various methods.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).