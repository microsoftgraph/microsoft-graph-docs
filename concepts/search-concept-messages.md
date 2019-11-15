---
title: "Search messages"
description: "The Microsoft Search API lets apps search for information in email messages, return messages ranked by relevance, and render a dedicated search experience."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Search messages

The Microsoft Search API lets apps search for information in email messages, return messages ranked by relevance, and render a dedicated search experience. The search applies to the body and attachments of messages in the user's own mailbox.

A search query can include [filters](https://support.office.com/article/learn-to-narrow-your-search-criteria-for-better-searches-in-outlook-d824d1e9-a255-4c8a-8553-276fb895a8da) that end users enter in the **Search** text box in Outlook.

Message search results are sorted by **receivedDateTime** in descending order.

Message search applies to work or school accounts. Users can search their own mailbox, but not in delegated mailboxes. See further [known limitations](#known-limitations) below.

Message search also looks for attachments. The [file types supported for attachments](https://docs.microsoft.com/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types) is the same as that for SharePoint Online.

## Examples

### Example 1

The following example queries messages in the signed-in user's mailbox that contain the string "contoso" in any part of the message (the sender name, subject, message body, or any attachments). The query returns the first 25 results. The search results are ordered by Datetime descending.

#### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
{
  "requests": [{
      "entityTypes": ["microsoft.graph.message"],
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

#### Response 

The following is an example of the response which contains one message that matches the search criterion. 

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#search",
    "value": [
        {
            "searchTerms": [
                "contoso"
            ],
            "hitsContainers": [
                {
                    "total": 1,
                    "moreResultsAvailable": false,
                    "hits": [
                        {
                            "_id": "ptWLQ4o6HYpQg8xmAAATzOzRAAA=",
                            "_score": 1,
                            "_sortField": "DateTime",
                            "_summary": "Here is a summary of your messages from last week",
                            "_source": {
                                "@odata.type": "#microsoft.graph.message",
                                "createdDateTime": "2019-10-07T10:00:08Z",
                                "lastModifiedDateTime": "2019-10-07T10:00:11Z",
                                "receivedDateTime": "2019-10-07T10:00:09Z",
                                "sentDateTime": "2019-10-07T09:59:52Z",
                                "hasAttachments": false,
                                "subject": "Weekly digest: Office 365 changes",
                                "bodyPreview": "Here is a summary of your messages from last week -   New Feature: Live captions in English-US a",
                                "importance": "normal",
                                "replyTo": [
                                    {
                                        "emailAddress": {
                                            "name": "Goncalo Torres"
                                        }
                                    }
                                ],
                                "sender": {
                                    "emailAddress": {
                                        "name": "Office365 Message Center",
                                        "address": "gtorres@contoso.com"
                                    }
                                },
                                "from": {
                                    "emailAddress": {
                                        "name": "Office365 Message Center",
                                        "address": "gtorres@contoso.com",
                                    }
                                }
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```

### Example 2 Search top results messages
The following example uses the same search query as [example 1](#example-1), and sorts the results by relevance. 

#### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
{
    "requests": [{
        "entityTypes": ["microsoft.graph.message"],
        "query": {
            "query_string": {
                "query": "contoso"
            }
        },
        "from": 0,
        "size": 15,
        "enableTopResults": true
    }]
}
```

## Known limitations

- You can only access a user’s own mailbox. Searching delegated mailbox is not supported 

- For messages, the **total** property of the [searchHitsContainer](/graph/api/resources/searchhitscontainer?view=graph-rest-beta) type contains the number of results on the page, not the total number of matching results.

## Next steps

Find out more about:

- [Use the search API](/graph/api/resources/search-api-overview?view=graph-rest-beta)
