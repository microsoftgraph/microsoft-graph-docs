---
title: "Use the Microsoft Search API in Microsoft Graph to search calendar events"
description: "You are able to search in user’s own calendar."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search calendar events

You can use the Microsoft Search API to search for events in a user’s primary calendar. The user identity for the search is based on the auth token.

>[!WARNING]
>The API Schema has changed : some properties in the request and response are deprecated. See [more details here](/graph/api/resources/search-api-overview?preserve-view=true#schema-change-deprecation-warning). The samples below use the up to date schema.

## Example

### Request

This example searches in the user's calendar for the keyword "contoso", and will return up to 25 results.

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
      "entityTypes": [
        "event"
      ],
      "query": {
        "queryString":"contoso"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

## Known limitations

- You can only access a user’s own mailbox. Searching delegated mailboxes is not supported.
- For events, the **total** property of the [searchHitsContainer](/graph/api/resources/searchhitscontainer?preserve-view=true) type contains the number of results on the page, not the total number of matching results.
- Sorting results is not supported for events. A sort clause in the request will return a Bad Request error code in the response.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?preserve-view=true)
