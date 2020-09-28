---
title: "Review app authentication library changes"
description: "Describes how to update authentication library use in order to migrate an app from Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Review app authentication library changes

This article is part of *step 3: review app details* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

Most apps use an authentication library to acquire and manage access tokens to call Microsoft Graph.  Microsoft offers two authentication libraries:

- [Azure Active Directory authentication library](/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL)
- [Microsoft authentication library](/azure/active-directory/develop/reference-v2-libraries) (MSAL)

## Updating ADAL

If your app currently uses ADAL, use a two-stage migration approach:

1. Update your app to acquire access tokens for Microsoft Graph. Continue to use ADAL for this step. Update the **resourceURL**, which holds the URI representing the resource web API, from:

    `https://graph.windows.net`  

    To:  

    `https://graph.microsoft.com`

    Newly acquired tokens have the same scopes after this change, but the audience of the access tokens is now Microsoft Graph.  

    Once you've updated **resourceURL** and verified functionality, release an interim update to get your users up and runnning.

1.  Next, begin work migrating your app to use MSAL, which is the supported library to use moving forward, now that ADAL is deprecated.

## Migrating to MSAL

MSAL provides multiple benefits over ADAL, including incremental consent, richer single sign-on experiences, support for personal Microsoft accounts, use of standards-based protocols and so on.  

When you switch your app over to MSAL, you'll need to make a few changes, including setting the **scopes** parameter in the token acquistion request:

``` csharp
var scopes = new string[] { "https://graph.microsoft.com/.default" };
```

The expression above limits the permission scopes request to those configured during application registration in the Azure Portal, and saves your existing users from having to consent to your app again.

See [Migrating ADAL to MSAL](https://aka.ms/adal-net-to-msal-net) for direct and extensive help with the process, including troubleshooting and help with common errors.

Once you've migrated to MSAL, you can request additional scopes dynamically, and users are prompted to provide incremental consent the next time they use your app.

## Next Steps

- Learn [.NET client library](migrate-azure-ad-graph-client-libraries.md) differences between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.