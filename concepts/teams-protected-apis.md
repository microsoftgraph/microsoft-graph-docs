---
title: "Protected APIs in Microsoft Teams"
description: "Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# Protected APIs in Microsoft Teams

Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs. 
These APIs require that you have additional validation, beyond permissions and consent, before you can use them.

The following APIs are currently protected:
* [List channel messages](/graph/api/channel-list-messages?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get channel message](/graph/api/channel-get-message?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [List replies to a message](/graph/api/channel-list-messagereplies?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get a reply to a message](/graph/api/channel-get-messagereply?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [List messages in a chat](/graph/api/chatmessage-list?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get message in chat](/graph/api/chatmessage-get?view=graph-rest-beta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)

>[!NOTE]
>[Send message](/graph/api/channel-post-messages?view=graph-rest-beta) is not a protected API.

To request access to these protected APIs, complete the following [request form](http://aka.ms/teamsgraph/requestaccess). 
We review access requests every Wednesday and deploy approvals every Friday.
If you would like to provide information in addition to the form, you can contact [teamsAppPerms@microsoft.com](mailto:teamsAppPerms@microsoft.com).
