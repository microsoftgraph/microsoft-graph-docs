---
title: "Overview of the Microsoft Search API in Microsoft Graph"
description: "Use the Microsoft Search API to index content and add search across your Office and indexed content to your apps."
localization_priority: Priority
ms.prod: "search"
author: "snlraju-msft"
scenarios: "getting-started"
---

# Overview of the Microsoft Search API in Microsoft Graph

Microsoft Search is an enterprise search engine that delivers productivity gains and relevant search results for your organization. It harnesses the collective knowledge and productivity of an organization, and surfaces relevant content to keep end users up to date. Microsoft Search is available in various experiences including Office, SharePoint, Delve, Windows, and Bing. You can use the Microsoft Search API in Microsoft Graph to extend Microsoft Search to your apps.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

<!-- markdownlint-disable MD026 -->
## Why use the Microsoft Search API?

### One unified search endpoint for Microsoft cloud data

The Microsoft Search API provides one unified search endpoint that you can use to [query](/graph/api/search-query) data in the Microsoft cloud - messages and events in Outlook mailboxes, and files on OneDrive and SharePoint - that Microsoft Search already indexes.

### Include custom external data in search experience (preview)

Use [Microsoft Graph connectors](/microsoftsearch/connectors-overview) to include data outside of the Microsoft cloud in your search experience. For instance, connect to an organization's human resources database or product catalog. Then use the Microsoft Search API to seamlessly [query](/graph/api/search-query) the external data source. 

Browse the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery) to find ready-to-use connectors. Alternatively, you can [build your own connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true#common-use-cases) to index external custom items and query specific external data sources.

### Consistent, up-to-date search experience

When you use the Microsoft Search API, your customers benefit from more personalized, relevant search results powered by Microsoft Graph. The search experience in your apps will return results that are consistent with search in Office applications.

## What data can I add or access by using the Microsoft Search API?

The Microsoft Search API supports searching the following content in the Microsoft cloud:

- Outlook email [messages](/graph/api/resources/message) and calendar [events](/graph/api/resources/event) objects
- SharePoint and OneDrive files and folders ([driveItem](/graph/api/resources/driveitem)), [lists](/graph/api/resources/list), [listItems](/graph/api/resources/listitem), [sites](/graph/api/resources/site) and [drives](/graph/api/resources/drive)
- Content ingested throught the Graph Connectors platform : [externalItems](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) (preview)

## API reference

Looking for the API reference for this service?

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-1.0) (v1.0)
- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta) (preview)
- [Use the Microsoft Search API to index data](/graph/api/resources/indexing-api-overview) (preview)

## Next steps

- Learn more about [Microsoft Search](/microsoftsearch/).
- Learn more about a few key use cases:
  - [Manage connections to index external content](search-index-manage-connections.md)
  - [Index external content](search-index-manage-items.md)
  - [Search Outlook messages](search-concept-messages.md)
  - [Search calendar events](search-concept-events.md)
  - [Search content in Sharepoint and OneDrive](search-concept-files.md)
  - [Search external content](search-concept-custom-types.md) (preview)
  - [Sort search results](search-concept-sort.md) (preview)
  - [Refine search results](search-concept-aggregation.md) (preview)
  
- Explore the search APIs in  [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub.

## See also

- Engage with the community on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph-search) or on GitHub
