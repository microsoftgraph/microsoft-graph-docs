---
title: "Use the Microsoft Search API to index data"
description: "Microsoft Graph lets your app index custom items or external files in the Microsoft Search service."
localization_priority: Priority
author: "snlraju-msft"
ms.prod: ""
doc_type: conceptualPageType
---

# Use the Microsoft Search API to index data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph lets your app add custom items or external files into search results in the [Microsoft Search](/microsoftsearch/overview-microsoft-search) experience.

Requests to index data are performed on behalf of an application without the presence of a signed-in user, identified using an [access token with application permission](/graph/auth-v2-service).

## Common use cases

The use cases for the APIs in this section center around building [Microsoft Graph connectors](/microsoftsearch/connectors-overview), which involves the main steps of:

1. [Creating a connection](../api/external-post-connections.md) to an external data source
2. [Creating and registering a schema](../api/externalconnection-post-schema.md) that describes the type and how to index the external data
3. [Indexing the data](../api/externalconnection-put-items.md) as an external item or external file

| Use cases                                        | REST resources                              | See also |
|:-------------------------------------------------|:--------------------------------------------|:--|
| **Configuration actions**                        |                                             |   |
| Create, update, or delete a connection           | [externalConnection](externalconnection.md) | [Methods of externalConnection](externalconnection.md#methods) |
| Register a schema for the external data          | [schema](schema.md)                         | [Methods of schema](schema.md#methods) |
| **Indexing actions**                             |                                             |   |
| Add, update or delete a custom item in the index | [externalItem](externalitem.md)             | [Methods of externalItem](externalItem.md#methods) |
| Add, update or delete a file in the index        | [externalFile](externalfile.md)             | [Methods of externalFile](externalfile.md#methods) |

## Known limitations

Note the following limitations during preview.

- Organizations are limited to a maximum of 10 connections.
- No support for custom properties when indexing files using the `externalFile` resource.
- Only Azure Active Directory identities are supported.
- Creating `externalItem` or `externalFile` resources is limited to 4 items per second.
- An application is limited to 4 concurrent operations on a connection.
- Connections have a capacity limit of 700,000 items or ~70 GB of data.
- Maximum size of an `externalItem` or `externalFile` entity is 4 MB.
- No support for refining and sorting results.
- Result ranking is best effort.

## Next steps

- [Microsoft Search API overview](/graph/search-concept-overview)
- Drill down on the methods, properties, and relationships of the [externalConnection](externalconnection.md), [schema](schema.md), [externalItem](externalitem.md), and [externalFile](externalfile.md) resources.
- Check out the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub.
