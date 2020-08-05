---
title: "Azure AD authentication methods usage report API overview"
description: "The authentication methods usage report helps an organization understand how their end users are using Azure Active Directory capabilities such as self-service password reset and multi-factor authentication (MFA)."
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authentication methods usage report helps an organization understand how their end users are using Azure Active Directory capabilities such as self-service password reset and MFA. Using this report, you can gain insights into how end users are registering and using these capabilities using the various authentication methods provided by Azure Active Directory. For example, you can use these reports to gather feedback when you are rolling out these capabilities within your organization. These reports will provide insights such as which authentication methods are more successful for your organization, what kind of errors the end users are running into as well as help you determine what kind of campaign you need to run to help your end users adopt these capabilities.

## What does this report cover

- Authentication Method Registration Summary and Details ([Self-service password reset registration at](aka.ms/ssprsetup),[Combined security info registration](https://aka.ms/mysecurityinfo))
- Authentication Method Usage Summary and Details ([Self-service password reset usage](https://aka.ms/sspr)

## What's not there

- [Authentication Method Registration Details for MFA](https://aka.ms/mfasetup)
- MFA Usage (both Per-user and Conditional Access-based MFA)

## What can I do with APIs in Microsoft Graph

Here are popular requests for working with this API:

Operation | URL | Description
:----------|:----|:----------
GET Credentials registration count | [GET /credentialuserregistrationcount](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialuserregistrationcount&version=beta)| Get the number of users registered for self-service password reset and MFA
GET Credentials usage count  | [GET /credentialusagesummary](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialusagesummary&version=beta)| Get the number of users using self-service password reset
GET Credentials registration details  |[GET /credentialuserregistrationdetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialuserregistrationdetails&version=beta)|Get the user details for self-service password reset and MFA registration activities
GET Credentials usage details  | [GET /usercredentialusagedetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/usercredentialusagedetails&version=beta)| Get user details for all self-service password reset activities

## What licenses do I need

Usage Reports are available for features that you've licensed for. Hence, this report is available if you have the capability to leverage self-service password reset and MFA in your tenant.

## Next Steps

- To learn how to [deploy Azure Active Directory self-service password reset](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-deployment).
- To learn how to deploy [Azure Active Directory MFA](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted).
- To learn how to enable [combined security info registration](https://docs.microsoft.com/azure/active-directory/authentication/howto-registration-mfa-sspr-combined).



