---
title: "Use the Microsoft Search API in Microsoft Graph to search custom types"
description: "You can use the Microsoft Search API to import external data via the [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta) resource, and run search queries on this external content."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search custom types

You can use the Microsoft Search API to import external data via the [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta) resource, and run search queries on this external content.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

To search for custom types, specify the following in the [query](/graph/api/search-query?view=graph-rest-beta) method request body:

- The **contentSources** property to include the connection ID that is assigned during the connector setup

- The **entityTypes** property as `externalItem`

- The **stored_fields** property to include the fields in the external item you want to retrieve

## Example

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
{
  "requests": [
    {
      "entityTypes": [
        "microsoft.graph.externalItem"
      ],
      "contentSources": [
        "/external/connections/servicenow-connector-contoso"
      ],
      "query": {
        "query_string": {
          "query": "contoso tickets"
        }
      },
      "from": 0,
      "size": 25,
      "stored_fields": [
        "title",
        "priority",
        "description"
      ]
    }
  ]
}
```

### Response

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.searchResponse)",
  "value": [
    {
      "hitsContainers": [
        {
          "total": 2,
          "moreResultsAvailable": false,
          "hits": [
            {
              "_id": "AAMkADc0NDNlNTE0",
              "_score": 1,
              "_sortField": "Relevance",
              "_source": {
                "@odata.type": "#microsoft.graph.externalItem",
                "properties": {
                  "number": "KB0010025",
                  "shortdescription": "Contoso maintenance guidelines",
                  "syscreatedon": "2019-10-14T22:45:02Z",
                  "accessurl": "https://contoso.service-now.com/kb_view.do?sys_kb_id=6b5465781ba000104793877ddc4bcb81",
                  "previewContent": "Contoso maintenance guidelines"
                }
              }
            },
            {
              "_id": "MG+1glPAAAAAAl3AAA=",
              "_score": 2,
              "_sortField": "Relevance",
              "_source": {
                "@odata.type": "#microsoft.graph.externalItem",
                "properties": {
                  "number": "KB0054396",
                  "shortdescription": "Contoso : Setting Office for the first time.",
                  "syscreatedon": "2019-08-09T01:53:26Z",
                  "accessurl": "https://contoso.service-now.com/kb_view.do?sys_kb_id=004d8d931b0733004793877ddc4bcb29",
                  "previewContent": "Description:  Setting Office for the first time.  Resolution:    To setup any Office app for the first time, tap any Office app like Word to launch it.    Tap Sign in if you already have a Microsoft Account or an Office 365 work or school account."
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

## Known limitations

- Custom types don’t support searching across multiple sources (specified in **contentSources**). You can search only one connection at a time.

- You must specify the **stored_fields** property; otherwise, search results are not returned.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta)
