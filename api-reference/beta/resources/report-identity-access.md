---
title: "Identity and access reports API overview"
description: "Access identity and access reports to get the information about how people in your business are using applications in your Azure Active Directory tenant."
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
author: "khotz"
doc_type: conceptualPageType
---

# Identity and access reports API overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can use access identity and access reports to get information about how people in your business are using applications in your Azure Active Directory (Azure AD) tenant.

## Authorization

Microsoft Graph controls access to resources using permissions. You must specify the permissions you need in order to access reports resources. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Reports permissions](/graph/permissions-reference#reports-permissions).

## What are identity and access reports?

The following identity and access reports are available to help you understand application activity in your tenant:

- AD FS application activity
- Application sign-in
- Registration and usage

### AD FS application activity

The AD FS application activity report provides information about how a relying party is configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Azure Active Directory. For more information, see the [relyingPartyDetailedSummary](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta) resource.

### Application sign-in

Evaluate the usage of application sign-ins in your tenant using either a summary report or a report that provides details of sign-ins, such as the number of sign-ins and whether any errors occured during sign-in. For more information, see the [applicationSignInSummary](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta) resource.

### Registration and usage

Get a better understanding of how users in your organization use Azure AD capabilities, such as self-service password rest and multi-factor authentication (MFA). You can determine which authentication methods are more successful for your organization, what types of errors end users are running into, and what campaign you need to run to help your end users adopt the use of self-service password rest and MFA. For more information, see the [authentication methods usage report API](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta).

## Next steps

Reports resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).


