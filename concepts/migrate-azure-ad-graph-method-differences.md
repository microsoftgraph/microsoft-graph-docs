---
title: "Method differences between Azure AD and Microsoft Graph"
description: "Describes method differences between Azure Active Directory (Azure AD) Graph API and Microsoft Graph API (REST)."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Method differences between Azure AD and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

A handful of Azure AD Graph methods have also changed.  If a method is **not** shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with exactly the same name as in Azure AD Graph.

|Azure AD Graph <br>(v1.6) method |Microsoft Graph<br>(resource/method)|Comments|
|---|---|---|
| getAvailableExtensionProperties | beta&nbsp;-&nbsp;_Not available_ <br> v1.0&nbsp;-&nbsp;[directoryObjects/getAvailableExtensionProperties](/graph/api/directoryobject-getavailableextensionproperties?view=graph-rest-1.0) |  |
| getObjectsByObjectId | beta&nbsp;-&nbsp;[directoryObjects/getByIds](/graph/api/directoryobject-getbyids?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[directoryObjects/getByIds](/graph/api/directoryobject-getbyids?view=graph-rest-1.0) | |
| invalidateAllRefreshTokens | beta&nbsp;-&nbsp;[revokeSignInSessions](/graph/api/user-revokesigninsessions?view=graph-rest-beta) <br> v1.0&nbsp;-&nbsp;[revokeSignInSessions](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) | |
| isMemberOf | beta&nbsp;-&nbsp;_Not planned_ <br> v1.0&nbsp;-&nbsp;_Not planned_ | Use [checkMemberGroups](/graph/api/user-checkmembergroups?view=graph-rest-1.0) instead. |
| restore | beta&nbsp;-&nbsp;[restore&nbsp;(applications,&nbsp;users,&nbsp;and&nbsp;groups)](/graph/api/directory-deleteditems-restore?view=graph-rest-beta)<br> v1.0&nbsp;-&nbsp;[restore&nbsp;(applications,&nbsp;users,&nbsp;and&nbsp;groups)](/graph/api/directory-deleteditems-restore?view=graph-rest-1.0) | You can also view deleted applications, users, and groups and permanently delete them. |

## Next Steps

- Learn how to [examine API differences](migrate-azure-ad-graph-audit-api-use.md) in your app between Azure AD Graph and Microsoft graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.
