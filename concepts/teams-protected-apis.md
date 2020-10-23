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
* [List channel messages](/graph/api/channel-list-messages) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get chatMessages in a channel delta](/graph/api/chatmessage-delta) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get channel message](/graph/api/channel-get-message) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Create subscription for new channel messages](/graph/api/subscription-post-subscriptions) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [List replies to a message](/graph/api/channel-list-messagereplies) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get a reply to a message](/graph/api/channel-get-messagereply) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* (List chats using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions) doesn't exist, with or without protected API access)
* [List messages in a chat](/graph/api/chat-list-message) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get message in chat](/graph/api/chat-get-message) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Create subscription for new chat messages](/graph/api/subscription-post-subscriptions) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [List all hosted content](/graph/api/chatmessage-list-chatmessagehostedcontents) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get hosted content](/graph/api/chatmessagehostedcontent-get) using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [List chat members](/graph/api/conversationmember-list)  using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)
* [Get chat member](/graph/api/conversationmember-get)  using [application permissions](auth/auth-concepts.md#microsoft-graph-permissions)

>[!NOTE]
>[Send message](/graph/api/channel-post-messages) is not a protected API.

To request access to these protected APIs, complete the following [request form](https://aka.ms/teamsgraph/requestaccess). We review access requests every Wednesday and deploy approvals every Friday, 
except during major holiday weeks in the U.S. Submissions during those weeks will be processed the following non-holiday week.

If you would like to provide information in addition to the form, you can contact [teamsAppPerms@microsoft.com](mailto:teamsAppPerms@microsoft.com).
