# Use the Microsoft Graph API to integrate social intelligence in an app

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Microsoft Graph supports social gestures in a user's social context, and provides access to useful people and social data.

## Aggregate and extract specific information about people

Use the [person](../resources/person.md) resource and the People API to aggregate information 
about a person from across mail, contacts, and social networks. The results are ordered by their 
relevance based on mutliple communication, collaboration, and business relationships. The API
lets you browse, sort, select, filter, or search for persons based on your criteria.

- [List people](../api/user_list_people.md)
- [Get person](../api/person_get.md)


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

  - [Create and send mentions as part of a new message](../api/user_sendmail.md#request-2)
  - [Create mentions as part of a message draft](../api/user_post_messages.md#request-2)

- Get information about mentions in a message

  - [Get all the messages in the signed-in user's mailbox that mention the user](../api/user_list_messages.md#request-2)
  - [Get details of each mention in a message](../api/message_get.md#request-2)

- [Delete a mention](../api/message_delete.md#request-2) in a message



## Access social data around and about a user

Office Graph encapsulates the relationships between different entities in Office 365. Use Office Graph to get social insights
into individual users across Office 365.

- List the items [trending around](../api/insights_list_trending.md) a user
- List users who have been [working with](../api/user_list_people.md) a user

