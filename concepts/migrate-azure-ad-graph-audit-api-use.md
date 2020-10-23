---
title: "Examine Azure AD Graph APIs app usage"
description: "Describes how to audit Azure Active Directory (Azure AD) APIs to migrate an app to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Examine Azure AD Graph APIs app usage

This is step 2 of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

While planning your migration to Microsoft Graph, take time to review your existing application and to catalog the Azure AD Graph APIs you're currently using.

Compare your list to the known differences.  This helps identify specific changes you'll need to make to migrate your app.  These include simple changes easily resolved using an editor's search-and-replace features or more complicated updates that might require more analysis.

Microsoft Graph supports many of the same features and capabilities of Azure AD graph.  There are a few key differences:

- [Request differences](migrate-azure-ad-graph-request-differences.md)
- [Feature differences](migrate-azure-ad-graph-feature-differences.md)
- [Resource type differences](migrate-azure-ad-graph-resource-differences.md)
- [Property differences](migrate-azure-ad-graph-property-differences.md)
- [Method differences](migrate-azure-ad-graph-method-differences.md)

You'll also want to verify the permissions required for the features your app is using.  In some cases, more granular permissions are available.

To learn more, see [Permissions](permissions-reference.md).

## Next Steps

- Learn about [app registration, permissions and consent differences](migrate-azure-ad-graph-app-registration.md) between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.

