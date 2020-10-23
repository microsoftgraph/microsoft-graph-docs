---
title: "Create single-value extended property"
description: "Create one or more single-value extended properties in a new or existing instance of a resource. "
localization_priority: Normal
author: "svpsiva"
ms.prod: ""
doc_type: apiPageType
---

# Create single-value extended property

Namespace: microsoft.graph

Create one or more single-value extended properties in a new or existing instance of a resource.

The following user resources are supported:

- [calendar](../resources/calendar.md)
- [contact](../resources/contact.md)
- [contactFolder](../resources/contactfolder.md)
- [event](../resources/event.md)
- [mailFolder](../resources/mailfolder.md)
- [message](../resources/message.md)

As well as the following group resources:

- group [calendar](../resources/calendar.md)
- group [event](../resources/event.md)
- group [post](../resources/post.md)

See [Extended properties overview](../resources/extended-properties-overview.md) for more information about when to use
open extensions or extended properties, and how to specify extended properties.

## Permissions
Depending on the resource you're creating the extended property in and the permission type (delegated or application) you request, the permission specified in the following table is the minimum required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [calendar](../resources/calendar.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [contactFolder](../resources/contactfolder.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite |  Calendars.ReadWrite|
| group [calendar](../resources/calendar.md) | Group.ReadWrite.All | Not supported | Not supported |
| group [event](../resources/event.md) | Group.ReadWrite.All | Not supported | Not supported |
| group [post](../resources/post.md) | Group.ReadWrite.All | Not supported | Not supported |
| [mailFolder](../resources/mailfolder.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite |

## HTTP request
You can create extended properties in a new or existing resource instance.

To create one or more extended properties in a _new_ resource instance, use the same REST request as creating the
instance, and include the properties of the new resource instance _and extended property_ in the request body.
Note that some resources support creation in more than one way. For more information on creating these resource instances,
see the corresponding topics for creating a [message](../resources/message.md), [mailFolder](../api/user-post-mailfolders.md),
[event](../api/user-post-events.md), [calendar](../api/user-post-calendars.md),
[contact](../api/user-post-contacts.md), [contactFolder](../api/user-post-contactfolders.md),
[group event](../api/group-post-events.md), and [group post](../resources/post.md).

The following is the syntax of the requests.

<!-- { "blockType": "ignored" } -->
```http
POST /me/messages
POST /users/{id|userPrincipalName}/messages
POST /me/mailFolders/{id}/messages

POST /me/mailFolders
POST /users/{id|userPrincipalName}/mailFolders

POST /me/events
POST /users/{id|userPrincipalName}/events

POST /me/calendars
POST /users/{id|userPrincipalName}/calendars

POST /me/contacts
POST /users/{id|userPrincipalName}/contacts

POST /me/contactFolders
POST /users/{id|userPrincipalName}/contactFolders

POST /groups/{id}/events

POST /groups/{id}/threads/{id}/posts/{id}/reply
POST /groups/{id}/conversations/{id}/threads/{id}/posts/{id}/reply
POST /groups/{id}/threads/{id}/reply
POST /groups/{id}/conversations/{id}/threads/{id}/reply
POST /groups/{id}/threads
POST /groups/{id}/conversations
```

To create one or more extended properties in an existing resource instance, specify the instance in the
request, and include the extended property in the request body.

**Note** You cannot create an extended property in an existing group post.

<!-- { "blockType": "ignored" } -->
```http
PATCH /me/messages/{id}
PATCH /users/{id|userPrincipalName}/messages/{id}
PATCH /me/mailFolders/{id}/messages/{id}

PATCH /me/mailFolders/{id}
PATCH /users/{id|userPrincipalName}/mailFolders/{id}

PATCH /me/events/{id}
PATCH /users/{id|userPrincipalName}/events/{id}

PATCH /me/calendars/{id}
PATCH /users/{id|userPrincipalName}/calendars/{id}

PATCH /me/contacts/{id}
PATCH /users/{id|userPrincipalName}/contacts/{id}

PATCH /me/contactFolders/{id}
PATCH /users/{id|userPrincipalName}/contactFolders/{id}

PATCH /groups/{id}/events/{id}
```

## Request headers
| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Provide a JSON body of each [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object in the
**singleValueExtendedProperties** collection property of the resource instance.

|Property|Type|Description|
|:-----|:-----|:-----|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection| An array of one or more single-valued extended properties. |
|id|String|For each property in the **singleValueExtendedProperties** collection, specify this to identify the property. It must follow one of the supported formats. See [Outlook extended properties overview](../resources/extended-properties-overview.md) for more information. Required.|
|value|string|For each property in the **singleValueExtendedProperties** collection, specify the property value. Required.|

When creating an extended property in a _new_ resource instance, in addition to the
new **singleValueExtendedProperties** collection, provide a JSON representation of that resource instance (that is, a [message](../resources/message.md),
[mailFolder](../resources/mailfolder.md), [event](../resources/event.md), etc.)

## Response

#### Response code
An operation successful in creating an extended property in a new resource instance returns `201 Created`, except in a new group post,
depending on the method used, the operation can return `200 OK` or `202 Accepted`.

In an existing resource instance, a successful create operation returns `200 OK`.


#### Response body

When creating an extended property, the response includes only the new or existing instance but not the new extended property. To see the newly
created extended property, [get the instance expanded with the extended property](../api/singlevaluelegacyextendedproperty-get.md).

When creating an extended property in a _new_ [group post](../resources/post.md) by replying to a thread or post, the response includes only
a response code but not the new post nor the extended property.



## Example
##### Request 1

The first example creates a new event and a single-value extended property in the same POST operation. Apart from the properties you'd normally
include for a new event, the request body includes the **singleValueExtendedProperties** collection that contains one single-value
extended property, and the following for the property:
- **id** specifies the property type as `String`, the GUID, and the property named `Fun`.
- **value** specifies `Food` as the value of the `Fun` property.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/v1.0/me/events
Content-Type: application/json

{
  "subject": "Celebrate Thanksgiving",
  "body": {
    "contentType": "HTML",
    "content": "Let's get together!"
  },
  "start": {
      "dateTime": "2015-11-26T18:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "end": {
      "dateTime": "2015-11-26T23:00:00",
      "timeZone": "Pacific Standard Time"
  },
  "attendees": [
    {
      "emailAddress": {
        "address": "Terrie@contoso.com",
        "name": "Terrie Barrera"
      },
      "type": "Required"
    }
  ],
  "singleValueExtendedProperties": [
     {
           "id":"String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun",
           "value":"Food"
     }
  ]
}
```

##### Response 1

A successful response is indicated by an `HTTP 201 Created` response code, and includes the new event
in the response body, similar to the response from [creating just an event](../api/user-post-events.md).
The response does not include any newly created extended properties.

To see the newly created extended property, [get the event expanded with the extended property](../api/singlevaluelegacyextendedproperty-get.md).


****

##### Request 2

The second example creates one single-value extended property for the specified existing message. That extended property is the only
element in the **singleValueExtendedProperties** array. The request body includes the following for the
extended property:
- **id** specifies the property type as `String`, the GUID, and the property named `Color`.
- **value** specifies `Green` as the value of the `Color` property.

<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/v1.0/me/messages/AAMkAGE1M2_bs88AACHsLqWAAA=

Content-Type: application/json

{
  "singleValueExtendedProperties": [
      {
         "id":"String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color",
         "value":"Green"
      }
    ]
}
```

##### Response 2

A successful response is indicated by an `HTTP 200 OK` response code, and includes the specified message in the response body,
similar to the response from [updating a message](../api/message-update.md). The response does not
include the newly created extended property.

To see the newly created extended property, [get the message expanded with the extended property](../api/singlevaluelegacyextendedproperty-get.md).

<!-- This page was manually created. -->
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create a single-value extended property",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


