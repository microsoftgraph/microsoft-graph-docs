---
title: "Use the Microsoft Graph API to integrate people and workplace intelligence in an app"
description: "Microsoft Graph enables access to useful data about people, their profile, documents they interact with, and work patterns, and supports gestures in a user's social context."
localization_priority: Priority
author: "simonhult"
ms.prod: "insights"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to integrate people and workplace intelligence in an app

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph enables access to useful data about people, their profile, documents they interact with, and work patterns, and supports gestures in a user's social context.

## Aggregate and extract specific information about people

Feature: People

Use the [person](../resources/person.md) resource and the People API to aggregate information
about a person from across mail, contacts, and social networks. The results are ordered by their
relevance based on multiple communication, collaboration, and business relationships. The API
lets you browse, sort, select, filter, or search for persons based on your criteria.

- [List people](../api/user-list-people.md)

## Help users contextualize others in their organization

Feature: Profile (preview)

People who seek to contextualize others within their organization commonly view a person's profile or profile card. 

The [profile](../resources/profile.md) resource is a rich source of information about people within a tenant and provides a lightweight mechanism for storing and retrieving information about a person. 

## Personalize people experiences within your organization

Feature: Profile card customization (preview)

Provides the ability for an administrator to customize the information shown on the profile card used across Microsoft 365 within their organization.

The [profileCardProperty](../resources/profileCardProperty.md) resource represents an attribute of a user on the Microsoft 365 profile card for an organization to surface in a shared, people experience.

## Help users get the most relevant documents for their work

Feature: Document insights

Use the insights API to identify the most relevant documents for a user:

- List documents [trending around](../api/insights-list-trending.md) a user
- List documents [used by](../api/insights-list-used.md) a user
- List documents [shared with or shared by](../api/insights-list-shared.md) a user
- Explore ways to [customize privacy settings for item insights](/graph/insights-customize-item-insights-privacy.md) in an organization.

## Manage @-Mentions

Feature: @-mentions (preview)

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


## Help users gain insights into their work patterns

Feature: Analytics (preview)

Use the analytics API to get activity statistics and related settings for a user:

- [settings](../resources/settings.md): For the analytics API to return results for a user, the current user analytics settings must show a valid MyAnalytics license, be opted in to using MyAnalytics, and have a cloud-hosted mailbox that’s graph-enabled.
- [activityStatistics](../resources/activitystatistics.md): Gets data for the last complete week (or the specified time range) for the Microsoft 365 activities that a user spent time on, including the number of hours spent on [calls](callactivitystatistics.md), [chats (instant messages)](chatactivitystatistics.md), [email](emailactivitystatistics.md), and [meetings](meetingactivitystatistics.md) during and outside of working hours and the number of hours available for [focused work](focusactivitystatistics.md).

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for these API sets.


