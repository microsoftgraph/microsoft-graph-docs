---
title: "Create, update, and delete connections in the Microsoft Graph"
description: "Learn how to use Microsoft Graph to create and manage connections"
localization_priority: Priority
author: "rsamai"
ms.prod: "search"
doc_type: conceptualPageType
---

# Create, update, and delete connections in the Microsoft Graph

Connections from external services to the Microsoft Search service are represented by the [externalConnection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true) resource in Microsoft Graph.

[!INCLUDE [search-api-preview-signup](../includes/search-api-preview-signup.md)]

The Microsoft Graph connectors platform offers a simple way to add your external data into the Microsoft Graph. A connection is a logical container for your external data that an administrator can manage as a single unit.

Once a connection has been created, you can add your content from any external data source such as an on-premises content source or an external SaaS service. You can only view and manage the connections you created or were explicitly [authorized](/graph/api/external-post-connections?view=graph-rest-beta&preserve-view=true) to manage. A search admin can view and manage all the connections in the tenant from the Modern Admin Center.

<!-- markdownlint-disable MD036 -->
![Sample custom helpdesk system Tickets Connector Structure](./images/search-index-manage-connections-connector-structure.png)

*Sample custom helpdesk system Tickets Connector Structure*

![Admin View of Connections including the custom Tickets Connector](./images/search-index-manage-connections-admin-view.svg)

*Admin View of Connections including the custom Tickets Connector*

<!-- markdownlint-enable MD036 -->

You can model a connection anyway you want, but creating one connection for every instance of your connector is the most common model. For example, each time you [set up the Microsoft Windows file share connector](/microsoftsearch/configure-connector), a new connection is created. You can also create a single connection to add all items from your data source. For example, creating a single connection to add all the tickets and incidents across multiple teams from your helpdesk system.

## States and operations

Your connection can exist in one of the following states.

| State             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Draft**         | An empty connection is provisioned. The data source, schema, or any settings have not been configured yet.                                                |
| **Ready**         | The connection is provisioned with registered schema and is ready for ingestion.                                                                          |
| **Obsolete**      | This occurs when a dependent feature, such as an API, has been deprecated. Deleting the connection is the only valid operation.                           |
| **LimitExceeded** | If you hit the maximum limit of a single connection or the tenant level quota across all connections, you cannot add more items until you exit the state. |

The following table specifies which operations are available in each state.

| Operation         | Draft              | Ready              | Obsolete           | LimitExceeded      |
|-------------------|--------------------|--------------------|--------------------|--------------------|
| Create connection | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Read connection   | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update connection | :heavy_check_mark: | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Delete connection | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Create schema     | :heavy_check_mark: | :x:                | :x:                | :x:                |
| Read schema       | :x:                | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update schema     | :x:                | :x:                | :x:                | :x:                |
| Delete schema     | :x:                | :x:                | :x:                | :x:                |
| Create item       | :x:                | :heavy_check_mark: | :x:                | :x:                |
| Read item         | :x:                | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Update item       | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |
| Delete item       | :x:                | :heavy_check_mark: | :x:                | :heavy_check_mark: |

A connection allows your application to [define a schema](/graph/api/externalconnection-post-schema?view=graph-rest-beta&preserve-view=true) for items that will be indexed, and provides an endpoint for your service to add, update, or delete items from the index. [Creating a connection](#create-a-connection) is the first step for an application to add items to the search index.

## Create a connection

Before an application can add items to the search index, it must create and configure a connection using the following steps.

- [Create a connection](/graph/api/external-post-connections?view=graph-rest-beta&preserve-view=true) with a unique ID, display name, and description.
- [Register a schema](/graph/api/externalconnection-post-schema?view=graph-rest-beta&preserve-view=true) to define the fields that will be included in the index.

> [!IMPORTANT]
> After a schema has been registered, it cannot be changed for an existing connection.

## Update a connection

You can change the display name or description of an existing connection by [updating the connection](/graph/api/externalconnection-update?view=graph-rest-beta&preserve-view=true).

## Delete a connection

You can [delete a connection](/graph/api/externalconnection-delete?view=graph-rest-beta&preserve-view=true), and remove all items that were indexed via that connection.

## Next steps

- [Register the connection schema](/graph/search-index-manage-schema)
- [Review the Graph Connectors API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true)
- [Overview for Microsoft Graph Connectors](/microsoftsearch/connectors-overview)
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub
