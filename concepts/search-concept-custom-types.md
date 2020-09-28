---
title: "Use the Microsoft Search API in Microsoft Graph to search custom types"
description: "You can use the Microsoft Search API to import external data via the [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) resource, and run search queries on this external content."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API to search custom types imported using Microsoft Graph connectors

Use the Microsoft Search API to search accross content ingested and indexed by [Microsoft Graph connectors](/microsoftsearch/connectors-overview). The content is imported either via [built-in connectors](/microsoftsearch/connectors-gallery) provided by Microsoft, or via custom connectors implemented using the [Microsoft Graph connectors ingestion API](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true).

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

Once the content has been imported and indexed, you can use the search API to query the content.

To search for custom types, specify the following properties in the request body of the [query](/graph/api/search-query?view=graph-rest-beta&preserve-view=true) method:

- The **contentSources** property to include the connection ID that is assigned during the connector setup. You can pass multiple connection IDs to search across multiple connections. Results are returned in a single list, ranked accross the multiple connections.

<!--
TODOSEARCHAPI - Bug 1653398 
-->

- The **entityTypes** property as `externalItem`.

- The **fields** property to include the fields in the external item to retrieve.

## Example

In this example, the content of the [AdventureWorks](/sql/samples/adventureworks-install-configure) database has been ingested using the Azure SQL built-in connector.

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

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

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

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

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true)