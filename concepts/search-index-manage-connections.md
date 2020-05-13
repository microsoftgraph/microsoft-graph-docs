---
title: "Create, update, and delete connections to the Microsoft Search service"
description: "Learn how to use Microsoft Graph to manage connections to the Microsoft Search service"
localization_priority: Priority
author: "snlraju-msft"
ms.prod: ""
doc_type: conceptualPageType
---

# Create, update, and delete connections to the Microsoft Search service

Connections from external services to the Microsoft Search service are represented by the [externalConnection](/graph/api/resources/externalconnection?view=graph-rest-beta) resource in Microsoft Graph.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

A connection allows your application to [define a schema](/graph/api/externalconnection-post-schema?view=graph-rest-beta) for items that will be indexed, and provides an endpoint for your service to [add, update, or delete items from the index](search-index-manage-items.md). Creating a connection is the first step for an application to add items to the search index.

## Create a connection

Before an application can add items to the search index, it must create and configure a connection using the following steps.

- [Create a connection](/graph/api/external-post-connections?view=graph-rest-beta) with a unique ID, display name, and description.
- [Register a schema](/graph/api/externalconnection-post-schema?view=graph-rest-beta) to define the fields that will be included in the index.

> [!IMPORTANT]
> Once a schema has been registered, it cannot be changed for an existing connection.

## Update a connection

You can change the display name or description of an existing connection by [updating the connection](/graph/api/externalconnection-update?view=graph-rest-beta).

## Delete a connection

You can [delete a connection](/graph/api/externalconnection-delete?view=graph-rest-beta), and remove all items that were indexed via that connection.

## Next steps

- [Why use the Microsoft Search API?](search-concept-overview.md#why-use-the-microsoft-search-api)
- [Review the Indexing API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta)
- [Overview for Microsoft Graph Connectors](/microsoftsearch/connectors-overview)
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub
