---
title: "App migration planning checklist"
description: "Checklist for migrating your apps from Azure AD Graph to Microsoft Graph"
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# App migration planning checklist

Use the following checklist to plan your migration:

## Step 1: Review the differences between the APIs

In many respects, Microsoft Graph is similar to the earlier Azure AD Graph. In many cases, simply change the endpoint service name and version in your code, and everything should continue to work.

Nonetheless, there are differences. Certain resources, properties, methods, and core capabilities have changed.

Specifically, look for differences in the following areas:

- [Request call syntax](migrate-azure-ad-graph-request-differences.md) between the two services
- [Feature differences](migrate-azure-ad-graph-feature-differences.md), such as directory extensions, batching, differential queries, and so on
- [Entity resource names](migrate-azure-ad-graph-resource-differences.md) and their types
- [Properties](migrate-azure-ad-graph-property-differences.md) of request and response objects
- [Methods](migrate-azure-ad-graph-method-differences.md), including parameters and types

## Step 2: Examine API use

[Examine the APIs](migrate-azure-ad-graph-audit-api-use.md) used by your app, the permissions they require, and compare to the list of known differences.  

Verify that the APIs your app needs are generally available in Microsoft Graph v1.0 and that these APIs work the same way.

In some cases, new capabilities and features are designed to replace earlier approaches.

Use the [Graph Explorer](https://aka.ms/ge) to experiment with new calls and to develop new approaches. For best results, sign in using the credentials of a test user in a test tenant so that you see what the API does over important data sets.

## Step 3: Review app details

- [App registration](migrate-azure-ad-graph-app-registration.md) and consent changes (which should be none).
- Token acquisition and [authentication libraries](migrate-azure-ad-graph-authentication-library.md).
- For .NET applications, use of [client libraries](migrate-azure-ad-graph-client-libraries.md).

## Step 4: Deploy, test, and extend your app

Before updating your app for everyone, ensure you test thoroughly and stage your rollout to your customer audience.

Now you've made the switch to Microsoft Graph, it's never been easier for you to unlock many more datasets and features that are now at your fingertips. You can get a taste of what's possible by looking at some [examples](/graph/examples).

If you're currently using the [AD authentication library](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL), consider switching to the [Microsoft authentication library](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) (MSAL).

## Next Steps

- Learn about [resquest call syntax](migrate-azure-ad-graph-request-differences.md) to start step 1: reviewing API differences.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
- To learn more about progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://developer.microsoft.com/en-us/graph/blogs/microsoft-graph-or-azure-ad-graph/).
