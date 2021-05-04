---
title: "Get incremental changes to messages in a folder"
description: "Delta query lets you query for additions, deletions, or updates to messages in a folder, by way of a series of"
author: "davidmu1"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Get incremental changes to messages in a folder

Delta query lets you query for additions, deletions, or updates to messages in a folder, by way of a series of
[delta](/graph/api/message-delta?view=graph-rest-1.0) function calls. Delta data enables you to maintain
and synchronize a local store of a user's messages,
without having to fetch the entire set of the user's messages from the server every time.

Delta query supports both full synchronization that retrieves all of the messages in a folder (for example, the user's Inbox),
and incremental synchronization that retrieves all of the messages that have changed in that folder since
the last synchronization. Typically, you would do an initial full synchronization of all the messages in a folder, and
subsequently, get incremental changes to that folder periodically.

## Track message changes in a folder

Delta query is a per-folder operation. To track the changes of the messages in a folder hierarchy, you need to track each folder individually.

Tracking message changes in a mail folder typically is a round of one or more GET requests with the **delta** function. The initial GET
request is very much like the way you [get messages](/graph/api/user-list-messages?view=graph-rest-1.0),
except that you include the **delta** function:

```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/{id}/messages/delta
```

A GET request with the **delta** function returns either:

- A `nextLink` (that contains a URL with a **delta** function call and a _skipToken_), or
- A `deltaLink` (that contains a URL with a **delta** function call and _deltaToken_).

These tokens are [state tokens](delta-query-overview.md#state-tokens) that are completely opaque to the client.
To proceed with a round of change tracking, simply copy and apply the URL returned from the last GET
request to the next **delta** function call for the same folder. A `deltaLink` returned in a response
signifies that the current round of change tracking is complete. You can save and use the `deltaLink` URL
when you begin the next round.

See the [example](#example-to-synchronize-messages-in-a-folder) below to learn how to use the `nextLink` and
`deltaLink` URLs.

### Use query parameters in a delta query for messages

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The `id` property is always returned.
- Delta query support `$select`, `$top`, and `$expand` for messages.
- There is limited support for `$filter` and `$orderby`:
  - The only supported `$filter` expressions are `$filter=receivedDateTime+ge+{value}`
  or `$filter=receivedDateTime+gt+{value}`.
  - Applying `$filter` in a delta query returns only up to 5,000 messages.
  - The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include an `$orderby` expression, the return order is not guaranteed.
- There is no support for `$search`.

### Optional request header

Each delta query GET request returns a collection of one or more messages in the response. You can optionally specify
the request header, `Prefer: odata.maxpagesize={x}`, to set the maximum number of messages in a response.

<!--
### Iterative process

A typical round to track message changes goes like this:

1. Make the initial GET request with the mandatory _Prefer: odata.track-changes_ header. If this is your very first delta query
for messages in that folder, don't provide any state token. If the messages support tracking changes, following the iterative
process (steps 2-6) described below will return the entire set of messages in that folder.

2. Check if the first response returns the _Preference-Applied: odata.track-changes_ header,
which confirms your resource supports tracking changes. Stop if you don't receive the response header.

3. If you receive a _skipToken_ (in an _@odata.nextLink_ response header) in the response, you should continue to track the
   additional messages that have changed (added, deleted, or updated). Make a second GET request, using the URL returned
   in _@odata.nextLink_, which includes a _skipToken_.

4. The second request will return additional messages that have changed, and either a _skipToken_ if there are more changed messages,
  or a _deltaToken_ if all the changed messages have been returned.

5. If you receive a _skipToken_ from the last GET request, continue getting the changes by sending a next GET call, similar to step 3.

6. When you eventually receive a _deltaToken (in an _@odata.deltaLink_ response header) in the response from a GET, stop. This
round of change tracking is complete.

7. Save the _deltaToken_. The next time you track changes for the same folder, make a GET request
similar to step 1, except that now you can use this _deltaToken_ to get just the delta data (messages that have been added, deleted or updated)
since the completion of the very first round.

-->

## Example to synchronize messages in a folder

The following example shows 2 rounds of synchronization of a specific folder which initially contains 5 messages.

The first round involves a series of 3 requests to synchronize all 5 messages in the folder:

- [Sample initial request](#sample-initial-request) and [response](#sample-initial-response)
- [Sample second request](#sample-second-request) and [response](#sample-second-response)
- [Sample third request](#sample-third-request) and [final response](#sample-third-and-final-response)

After the first round, one of the messages is deleted, and another is marked as read. The [second round](#synchronize-messages-in-the-same-folder-in-the-next-round) of synchronization returns only the delta (the deletion and update), without returning the other messages that have remained the same.

### Sample initial request

In this example, the specified folder is being synchronized for the first time, so the initial sync request does not include any state token.
This round will return all the messages in that folder.

The first request specifies the following:

- A `$select` parameter to return the `subject`, `sender`, and `isRead` properties for each message in the response.
- The [optional request header](#optional-request-header), _odata.maxpagesize_, returning 2 messages at a time.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_1"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$select=subject,sender,isRead HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample initial response

The response includes two messages and an `@odata.nextLink` response header.
The `nextLink` URL indicates there are more messages in the folder to get.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAASsKZz\"",
      "subject": "Holiday hours update",
      "isRead": false,
      "sender": {
        "emailAddress": {
          "name": "Dana Swope",
          "address": "danas@contoso.onmicrosoft.com"
        }
      },
      "id": "AAMkADNkNAAASq35xAAA="
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB/\"",
      "subject": "Holiday promotion sale",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Samantha Booth",
          "address": "samanthab@contoso.onmicrosoft.com"
        }
      },
      "id": "AQMkADNkNAAAVRMKAAAAA=="
    }
  ]
}
```

### Sample second request

The second request specifies the `nextLink` URL returned from the previous response. Notice that it no longer has to specify
the same `$select` parameter as in the initial request, as the `skipToken` in the `nextLink` URL encodes and includes it.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_2"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample second response

The second response returns the next 2 messages in the folder and another `nextLink`, indicating there are
more messages to get from the folder.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlqfdAAAEfYB+\"",
      "subject": "Microsoft Virtual Academy at Contoso",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Elliot Hyde",
          "address": "elliot-hyde@tailspintoys.com"
        }
      },
      "id": "AQMkADNkNAAAgWkAAAA"
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB+\"",
      "subject": "New or modified user account information",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Randi Welch",
          "address": "randiw@contoso.onmicrosoft.com"
        }
      },
      "id": "AQMkADNkNAAAgWJAAAA"
    }
  ]
}
```

### Sample third request

The third request continues to use the latest `nextLink` URL returned from the last sync request.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_3"
}-->
```
GET https://graph.microsoft.com/v1.0/me/mailFolders/AQMkADNkNAAAgEMAAAA/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample third and final response

The third response returns the only remaining message in the folder, and a `deltaLink` URL which indicates
synchronization is complete for the time being for this folder. Save and use the `deltaLink` URL to
[synchronize the same folder in the next round](#synchronize-messages-in-the-same-folder-in-the-next-round).

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzFPjSbaPPxzjlzOTAAAEfYB+\"",
      "subject": "Fabric CDN now available",
      "isRead": true,
      "sender": {
        "emailAddress": {
          "name": "Jodie Sharp",
          "address": "Jodie.Sharp@contoso.com"
        }
      },
      "id": "AAMkADk0MGFkODE3LWEAAA="
    }
  ]
}
```

### Synchronize messages in the same folder in the next round

Using the `deltaLink` from the [last request](#sample-third-request) in the last round,
you will be able to get only those messages that have changed (by being added, deleted, or updated) in that folder since then.
Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["AQMkADNkNAAAgEMAAAA"],
  "name": "get_messages_delta_next"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/mailfolders/AQMkADNkNAAAgEMAAAA/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY HTTP/1.1
Prefer: odata.maxpagesize=2
```

The response contains a `deltaLink`. This indicates that all changes in the remote mail folder are now synchronized. One message was deleted and the other message was changed.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
  "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY",
  "value": [
    {
      "@odata.type": "#microsoft.graph.message",
      "id": "AAMkADk0MGFkODE3LWE4MmYtNDRhOS0Dh_6qB-pB2Sa2pUum19a6YAAKnLuxoAAA=",
      "@removed": {
        "reason": "deleted"
      }
    },
    {
      "@odata.type": "#microsoft.graph.message",
      "@odata.etag": "W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAASsKZz\"",
      "subject": "Holiday hours update",
      "isRead": "true",
      "sender": {
        "emailAddress": {
          "name": "Dana Swope",
          "address": "danas@contoso.onmicrosoft.com"
        }
      },
      "id": "AAMkADNkNAAASq35xAAA="
    }
  ]
}
```

## See also

- [Microsoft Graph delta query](delta-query-overview.md)
- [Get incremental changes to events in a calendar view](delta-query-events.md)
- [Get incremental changes to groups](delta-query-groups.md)
- [Get incremental changes to users](delta-query-users.md)
