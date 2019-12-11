---
title: "Method differences between Azure AD and Microsoft Graph"
description: "Describes method differences between Azure Active Directory (Azure AD) Graph API and Microsoft Graph API (REST)."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Method differences between Azure AD and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

A handful of Azure AD Graph methods have also changed.  If a method is **not** shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with exactly the same name as in Azure AD Graph.

|Azure AD Graph <br>(v1.6) method |Microsoft Graph<br>(resource/method)|Comments|
|---|---|---|
| getAvailableExtensionProperties | beta - _Not available_ <br> v1.0 - _Not available_ |  |
| getObjectsByObjectId | beta&nbsp;-&nbsp;directory/getByIds <br> v1.0 - directory/getByIds | |
| invalidateAllRefreshTokens | beta - revokeSignInSessions <br> v1.0 - revokeSignInSessions | |
| isMemberOf | beta - _Not planned_ <br> v1.0 - _Not planned_ | Use checkMemberGroups instead. |
| restore | beta&nbsp;-&nbsp;restore&nbsp;(applications,&nbsp;users,&nbsp;and&nbsp;groups)<br> v1.0&nbsp;-&nbsp;restore&nbsp;(users&nbsp;and&nbsp;groups) | You can also view deleted applications, users, and groups and permanently delete them. |

## Next Steps

- Learn how to [examine API differences](migrate-azure-ad-graph-audit-api-use.md) in your app between Azure AD Graph and Microsoft graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
