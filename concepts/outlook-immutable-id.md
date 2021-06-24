---
title: "Get immutable identifiers for Outlook resources"
description: "Immutable identifiers enables your application to obtain an ID for Outlook items that does not change for the lifetime of the item."
author: "abheek-das"
localization_priority: Priority
ms.prod: "outlook"
---

# Get immutable identifiers for Outlook resources

Outlook items (messages, events, contacts, tasks) have an interesting behavior that you've probably either never noticed or has caused you significant frustration: their IDs change. It doesn't happen often, only if the item is moved, but it can cause real problems for apps that store IDs offline for later use. Immutable identifiers enables your application to obtain an ID that does not change for the lifetime of the item.

> [!NOTE]
> Immutable identifiers, like all identifiers in Microsoft Graph, are case-sensitive. Keep this in mind if you are comparing IDs.

## How it works

Immutable ID is an optional feature for Microsoft Graph. To opt in, your application needs to send an additional HTTP header in your API requests:

```http
Prefer: IdType="ImmutableId"
```

This header only applies to the request it is included with. If you want to always use immutable IDs, you must include this header with every API request.

## Lifetime of Immutable IDs

An item's immutable ID will not change so long as the item stays in the same mailbox. That means that immutable ID will NOT change if the item is moved to a different folder in the mailbox. However, the immutable ID will change if:

- The user moves the item to an archive mailbox.
- The user exports the item (to a PST, as an MSG file, etc.) and re-imports it into their mailbox.

## Items that support immutable ID

The following items support immutable IDs:

- [message resource type](/graph/api/resources/message)
- [attachment resource type](/graph/api/resources/attachment)
- [event resource type](/graph/api/resources/event)
- [eventMessage resource type](/graph/api/resources/eventmessage)
- [contact resource type](/graph/api/resources/contact)
- [outlookTask resource type](/graph/api/resources/outlooktask)

Container types (mailFolder, calendar, etc.) do not support immutable ID, but their regular IDs were already constant.

## Immutable ID with sending mail

You can use immutable IDs to find a message in the Sent Items folder after it has been sent, using the following steps:

1. [Create a draft message](/graph/api/user-post-messages) using the `Prefer: IdType="ImmutableId"` header and save the `id` property of the message in the response.
1. [Send the message](/graph/api/message-send) using the ID from the previous step.
1. [Get the message](/graph/api/message-get) using the ID from the first step. This is the copy in Sent Items.

> [!NOTE]
> Getting the message in Sent Items may not succeed immediately after sending the message. The copy of the message is not created until the message successfully sends, which may take time.

## Immutable ID with change notifications

You can request that Microsoft Graph send immutable IDs in change notifications by including the `Prefer: IdType="ImmutableId"` header when [creating a subscription](/graph/api/subscription-post-subscriptions). Existing subscriptions created without the header will continue to use the default ID format. In order to switch existing subscriptions to use immutable IDs, you must delete and recreate them using the header.

## Immutable ID with delta query

You can request that Microsoft Graph return immutable IDs in [delta query responses](delta-query-overview.md) for supported resource types by including the `Prefer: IdType="ImmutableId"` header. The `nextLink` and `deltaLink` values returned by delta queries are compatible with both ID formats, so your application does not need to re-synchronize to take advantage of immutable ID. You can use the header to get immutable IDs going forward, and you can [update your app's storage](#updating-existing-data) separately.

## Updating existing data

If you've already got a database filled with thousands of regular IDs, you can migrate those IDs to immutable format using the [translateExchangeIds](/graph/api/user-translateexchangeids) function. You can provide an array of up to 1000 IDs to be translated into a target format.

> [!NOTE]
> You can also use `translateExchangeIds` to migrate Exchange Web Services applications to Microsoft Graph.

### Example

The following example translates a normal Graph ID to an immutable Graph ID.

#### Request

```http
POST https://graph.microsoft.com/v1.0/me/translateExchangeIds

{
  "inputIds" :
  [
    "AQMkAGM2…"
  ],
  "targetIdType" : "restImmutableEntryId",
  "sourceIdType" : "restId"
}
```

#### Response

```http
HTTP 200 OK

{
  "value": [
    {
      "targetId": "AAkALgAA...",
      "sourceId": "AQMkAGM2..."
    }
  ]
}
```
