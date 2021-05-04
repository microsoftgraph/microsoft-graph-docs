---
title: "Review app registration, permissions, and consent migration issues"
description: "Describes app registration, permission, and consent migration from Azure Active Directory (Azure AD) to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "applications"
---

# Review app registration, permissions, and consent

This article is part of *step 3: review app details* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

For any app update, there are three areas to consider:

- **App registration**: You can continue to use your existing app registration (`appId`) in your application code.  

    You do **not** have to re-register your app to migrate to Microsoft Graph. Simply update the code, test heavily, and then deploy your update.  

- **Permissions**: You should change your configured permissions to the equivalent Microsoft Graph permissions. Delegated permissions which were granted for Azure AD Graph will be implicitly considered granted for Microsoft Graph also. Application permissions (app roles) will need to be granted again.

    If your update also incudes the use of features or capabilities that aren't available to Azure AD Graph, you'll likely need to request permissions for these new features. If that's the case, you can switch your app to use MSAL and the v2 endpoint, and request additional/incremental consent dynamically. Find more details about switching to MSAL in [review app authentication library changes](./migrate-azure-ad-graph-authentication-library.md).

- **Consent**: End-users who have already granted consent for delegated permissions (or for whom consent has already been granted by an admin) can continue using your app without being asked to grant consent again.

    Users who have already granted consent to your app to access their data can continue to use your app after it's been updated to use Microsoft Graph, without being asked to consent again. New users will be prompted for consent.

Simple migration projects should experience no issues in these areas.

However, if you use new features, services, or add additional capabilities, you may need new permissions and end-user consent may be required.  In such cases, consent is requested when tokens are refreshed.

## Next Steps

- Learn [authentication library](migrate-azure-ad-graph-authentication-library.md) differences between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.
