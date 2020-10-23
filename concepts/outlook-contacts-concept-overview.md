---
title: "Outlook personal contacts API overview"
description: "Outlook contacts lets you store personal contacts' data, and is part of the Outlook messaging hub in Microsoft 365. Through Outlook, you can manage emails, schedule meetings, find information about users in an organization, initiate online conversations, share files, and collaborate in groups."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
ms.custom: scenarios:getting-started
---

# Outlook personal contacts API overview

Outlook contacts lets you store personal contacts' data, and is part of the Outlook messaging hub in Microsoft 365. Through Outlook, you can manage emails, schedule meetings, find information about users in an organization, initiate online conversations, share files, and collaborate in groups.

## Why integrate with Outlook personal contacts?

### Complement messaging and calendaring scenarios for hundreds of millions of customers

Hundreds of millions of consumers and tens of millions of organization customers choose Outlook as their email client. Contacts provide a complementary function for messaging and calendaring by letting customers maintain a convenient, integrated store of contacts data within Outlook. For developers, tapping into the rich functionality of [mail](outlook-mail-concept-overview.md) or [calendar](outlook-calendar-concept-overview.md) means opening up richer scenarios with the user's contacts data.

### Automate contact organization

The contacts API lets you keep your customers organized, in close parity as the customers do it themselves through Outlook:

- Similarly to the customer experience, you can create [contact](/graph/api/resources/contact?view=graph-rest-1.0) instances and assign them to [contactFolder](/graph/api/resources/contactfolder?view=graph-rest-1.0) objects.
- The contacts API lets you assign categories contacts, as well as events, messages, tasks, and group posts in a consistent way to enhance organization and discovery. In addition, you can [define a user's master list of categories](/graph/api/outlookuser-post-mastercategories?view=graph-rest-1.0), which can open up additional creative scenarios.
- You can set a flag on a [contact](/graph/api/resources/contact?view=graph-rest-1.0) for follow-up. (Flagging is currently [in preview](versioning-and-support.md#beta-version) in Microsoft Graph.)

### Share contact information

The contacts API lets you get contact items of the signed-in user, or of the users who have shared or delegated their contacts to the signed-in user. For example, if Garth has shared a contact folder with John, or if Garth has delegated access to John, then [delegated permissions](auth/auth-concepts.md#microsoft-graph-permissions) from John would give you read access to Garth's shared calendar and contents as well.

### Leverage people API in Microsoft Graph to make better use of all people data

You can use the typical CRUD operations for an Outlook [contact](/graph/api/resources/contact?view=graph-rest-1.0) to create and manage contacts. As part of Microsoft Graph, you can also use the [people API](people-example.md) that looks at a user's Outlook contacts, as well as social networks, organization directory, and people from recent communication, and return information about people from all these sources that are most relevant to the user. Take advantage of this additional intelligence in people picker scenarios.

### Take advantage of other shared features and conveniences in Microsoft Graph

- The **contact** entity supports a contact photo which is implemented as the same [profilePhoto](/graph/api/resources/profilephoto?view=graph-rest-1.0) entity as a user photo stored in Exchange Online or Azure Active Directory. This eliminates the overhead in converting between contact and user profile photos.
- You can keep the app local store synchronized by subscribing to [change notifications](/graph/api/resources/webhooks?view=graph-rest-1.0) and [tracking changes](delta-query-overview.md) to contacts and contact folders.
- You can extend app storage in a contact instance as an [open extension](extensibility-overview.md#open-extensions), or add strongly typed custom data to the contact schema as a [schema extension](extensibility-overview.md#schema-extensions).

## Where is the data?

[!INCLUDE [outlook-mailbox-type-support](../includes/outlook-mailbox-type-support.md)]

## API reference

Looking for the API reference for this service?

- [Outlook contacts API in Microsoft Graph v1.0](/graph/api/resources/contact?view=graph-rest-1.0)
- [Outlook contacts API in Microsoft Graph beta](/graph/api/resources/contact?view=graph-rest-beta)

## Next steps

- Select and try contacts sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fcontacts&version=v1.0). Choose **Show more samples** in the column on the left. Use the menu to turn on **Personal contacts**.
- Learn about:
  - [Getting immutable identifiers for Outlook resources](outlook-immutable-id.md)
  - [Getting shared contacts](outlook-get-shared-contacts-folders.md)
- Take a look at the Outlook [contacts API](/graph/api/resources/contact?view=graph-rest-1.0) reference.
