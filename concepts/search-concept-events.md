---
title: "Search Calendar Events"
description: "You are able to search in user’s own calendar."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Search calendar events

You app can in a user’s own primary calendar. The user identity used to search is based on the Authorization Token.

## Example

### Request

This example searches in the user's calendar for the keyword "contoso", and will retrieve up to 25 results.

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.event"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

## Known limitations

You can only access user’s own calendar. Shared Calendar, delegated access is not supported.

## Next steps

Find out more about:

- [Use the search API](/graph/api/resources/search-api-overview?view=graph-rest-beta)