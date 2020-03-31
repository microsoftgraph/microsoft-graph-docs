---
title: "Use the Microsoft Search API in Microsoft Graph to search calendar events"
description: "You are able to search in user’s own calendar."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search calendar events

You can use the Microsoft Search API to search for events in a user’s primary calendar. The user identity for the search is based on the auth token.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

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
        "microsoft.graph.event"
      ],
      "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

## Known limitations

You can only access user’s own calendar. Shared calendar and delegated access schenarios are not supported.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
