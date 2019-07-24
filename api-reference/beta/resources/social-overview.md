---
title: "Use the Microsoft Graph API to integrate social and workplace intelligence in an app"
description: "Microsoft Graph supports social gestures in a user's social context, and provides access to useful people and social data."
localization_priority: Priority
author: "simonhult"
ms.prod: "insights"
---

# Use the Microsoft Graph API to integrate social and workplace intelligence in an app

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph supports social gestures in a user's social context, and provides access to useful people and social data.

## Aggregate and extract specific information about people

Use the [person](../resources/person.md) resource and the People API to aggregate information
about a person from across mail, contacts, and social networks. The results are ordered by their
relevance based on multiple communication, collaboration, and business relationships. The API
lets you browse, sort, select, filter, or search for persons based on your criteria.

- [List people](../api/user-list-people.md)

## Help users get the most relevant documents for their work

Use the insights API to identify the most relevant documents for a user: 

- List documents [trending around](../api/insights-list-trending.md) a user
- List documents [used by](../api/insights-list-used.md) a user
- List documents [shared with or shared by](../api/insights-list-shared.md) a user

## Manage @-Mentions

Calling out a recipient to notify and get the recipient's attention in a message is a common social gesture.
The [mention](../resources/mention.md) resource and the Mentions API provide a light-weight mechanism to call out
a recipient in a [message](../resources/message.md), get all the messages in which a user is notified using an @-mention,
or get each mention in a message.

<!--
Include the next sentence when supporting events.

**Mention** is also supported by [Event](../resources/event.md).

-->

- Create mentions in a new message

  - [Create and send mentions as part of a new message](../api/user-sendmail.md#request-2)
  - [Create mentions as part of a message draft](../api/user-post-messages.md#request-2)

- Get information about mentions in a message

  - [Get all the messages in the signed-in user's mailbox that mention the user](../api/user-list-messages.md#request-2)
  - [Get details of each mention in a message](../api/message-get.md#request-2)

- [Delete a mention](../api/message-delete.md#request-2) in a message

