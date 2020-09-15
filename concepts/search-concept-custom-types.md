---
title: "Use the Microsoft Search API in Microsoft Graph to search custom types"
description: "You can use the Microsoft Search API to import external data via the [externalItem](/graph/api/resources/externalitem?preserve-view=true) resource, and run search queries on this external content."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search custom types ingested with the Microsoft Graph connectors

You can use the Microsoft Search API to search accross content ingested via the [Microsoft Graph connectors](https://docs.microsoft.com/microsoftsearch/connectors-overview). The content can have been imported either via the [built in connectors](https://docs.microsoft.com/microsoftsearch/connectors-gallery) provided by Microsoft, or via a custom connectors implemented through the [Graph Connectors ingestion API](/graph/api/resources/indexing-api-overview?preserve-view=true).

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

>[!WARNING]
>The API Schema has changed : some properties in the request and response are deprecated. See [more details here](/graph/api/resources/search-api-overview?preserve-view=true#schema-change-deprecation-warning). The samples below use the up to date schema.

Once the content has been ingested, you can use the search API to query that particular content.

To search for custom types, specify the following in the [query](/graph/api/search-query?preserve-view=true) method request body:

- The **contentSources** property to include the connection ID that is assigned during the connector setup. It is possible to pass multiple connection ID to search accross multiple connections. The results will be a single list, ranked accross the multiple connections.

<!--
TODOSEARCHAPI - Bug 1653398 
-->

- The **entityTypes** property as `externalItem`

- The **fields** property to include the fields in the external item you want to retrieve

## Example

In this example, the content of the [AdventureWorks](https://docs.microsoft.com/sql/samples/adventureworks-install-configure) database has been ingested using the Azure SQL built-in connector.

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
        "externalItem"
      ],
      "contentSources": [
          "/external/connections/azuresqlconnector",
          "/external/connections/azuresqlconnector2"
      ],
      "query": {
        "queryString": "yang"
      },
      "from": 0,
      "size": 25,
      "fields": [
        "BusinessEntityID",
        "firstName",
        "lastName"
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
      "searchTerms": ["ya"],
      "hitsContainers": [
        {
          "total": 2,
          "moreResultsAvailable": false,
          "hits": [
            {
              "hitId": "AAMkADc0NDNlNTE0",
              "rank": 1,
              "summary": "<ddd/>",
              "contentSource": "/external/connections/azuresqlconnector",
              "resource": {
                "@odata.type": "#microsoft.graph.externalItem",
                "properties": {
                  "businessEntityID": 20704,
                  "firstName": "Amy",
                  "lastName": "Yang"
                }
              }
            },
           {
              "hitId": "AQMkADg3M2I3YWMyLTEwZ",
              "rank": 2,
              "summary": "<ddd/>",
              "contentSource": "/external/connections/azuresqlconnector2",
              "resource": {
                "@odata.type": "#microsoft.graph.externalItem",
                "properties": {
                  "businessEntityID": 20704,
                  "shortdescription": "Contoso maintenance guidelines",
                  "firstName": "Amy",
                  "lastName": "Yang"
                }
              }
            },
          ]
        }
      ]
    }
  ]
}
```

## Known limitations

- You must specify the **fields** property to get retrievable fields in the search schema.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?preserve-view=true)
