---
title: "Use the Microsoft Search API to query data"
description: "Using the search API, apps can search Microsoft 365 data in the context of the authenticated user"
localization_priority: Priority
author: "nmoreau"
ms.prod: "search"
doc_type: resourcePageType
---

# Use the Microsoft Search API to query data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the Microsoft Search API to query Microsoft 365 data in your apps.

Search requests run in the context of the signed-in user, identified using an [access token with delegated permissions](/graph/auth-v2-user).

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

## Common use cases

The Microsoft Search API provides a [query](../api/search-query.md) method to search across your data in Microsoft Search, where you pass a [searchRequest](searchRequest.md) in the request body, defining the specifics of your search.

This section lists the common use cases of the **query** method, based on the properties and parameters you set in the **query** [searchRequest](searchRequest.md) body.

Search requests run on behalf of the user. Search results are scoped to enforce any access control applied to the items.  For example, in the context of files, permissions on the files are evaluated as part of the search request. Users cannot access more items in a search than they can otherwise obtain from a corresponding GET operation with the same permissions and access control.

| Use cases | Properties to define in the query request body |
|:------------------|:---------|
|[Scope search results based on entity types](#scope-search-based-on-entity-types)| **entityTypes** |
|[Page results](#page-search-results) | **from** and **size** |
|[Get the most relevant emails](#get-the-most-relevant-emails) | **enableTopResults** |
|[Get selected properties](#get-selected-properties) | **fields** |
|[Use KQL in query terms](#keyword-query-language-kql-support) | **query** |
|[Sort search results](#sort-search-results)| **sort** |
|[Refine results using aggregations](#refine-results-using-aggregations)| **aggregations** |
|[Search across Graph connectors](/graph/search-concept-custom-types)| **contentSources** |

## Scope search based on entity types

Define the scope of the search request using the **entityTypes** property in the **query** request payload.
The following table describes the types available to query and the supported permissions to access the data.

| EntityType | Permission scope required to access the items| Source| Comment|
|:------------------|:---------|:---------|:---------|
|[message](message.md)|Mail.Read, Mail.ReadWrite| Exchange Online| Email messages.|
|[event](event.md) |Calendars.Read, Calendars.ReadWrite| Exchange Online|Calendar events. |
|[drive](drive.md)|Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All| SharePoint | Document libraries.|
|[driveItem](driveitem.md)|Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | Files, folders, pages, and news. |
|[list](list.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | Lists. Note that document libraries are also returned as lists. |
|[listItem](listitem.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint and OneDrive | List items. Note that files and folders are also returned as list items; **listItem** is the super class of **driveItem**. |
|[site](site.md)|Sites.Read.All, Sites.ReadWrite.All| SharePoint | Sites in SharePoint.|
|[externalItem](externalitem.md)|ExternalItem.Read.All| Microsoft Graph connectors| All content ingested with the Microsoft Graph connectors API.|

## Page search results

Control pagination of the search results by specifying the following two properties in the **query** request body:

- **from** - An integer that indicates the 0-based starting point to list search results on the page. The default value is 0.

- **size** - An integer that indicates the number of results to be returned for a page. The default value is 25.

Note the following limits if you're searching the **event** or **message** entity:

- **from** must start at zero in the first page request; otherwise, the request results in an HTTP 400 `Bad request`.
- The maximum results per page (**size**) is 25 for **message** and **event**. 

There is no upper limit for SharePoint or OneDrive items. A reasonable page size is 200. A larger page size generally incurs higher latency.

Best practices:

- Specify a smaller first page in the initial request. For example, specify **from** as 0, **size** as 25.
- Paginate subsequent pages by updating the **from** and **size** properties. You can increase the page size in each subsequent request. The following table shows an example.

    | Page | from | size |
    |:-----|:-----|:-----|
    | 1    | 0 | 25 |
    | 2    | 25 | 50 |
    | 3    | 75 | 75 |
    | 4    | 150 | 100 |

## Get the most relevant emails

When searching the **message** entity, specifying **enableTopResults** as `true` returns a hybrid list of messages: the first three messages in the response are sorted by relevance; the remaining messages are sorted by date/time.

## Get selected properties

When searching an entity type, such as **message**, **event**, **drive**, **driveItem**, **list**, **listItem**, **site**, **externalItem**, you can include in the **fields** property specific entity properties to return in the search results. This is similar to using the [OData system query option, $select](/graph/query-parameters#select-parameter) in REST requests. The search API does not technically support these query options because the behavior is expressed in the POST body.

For all these entity types, specifying the **fields** property reduces the number of properties returned in the response, optimizing the payload over the wire.

The **listItem** and **externalItem** entities are the only supported entities that allow getting extended fields configured in the schema. You cannot retrieve extended properties from all the other entities. For example, if you created a field for **externalItem** in the search schema, or if you have a custom column on a **listItem**, you can retrieve these properties from search. To retrieve an extended property on a file, specify the **listItem** type in the request.

If the **fields** specified in the request are not present in the schema, they will not be returned in the response. Invalid fields in the request are silently ignored.

If you do not specify any **fields** in the request,  you will get the default set of properties for all types. For extended properties, **listItem** and **externalItem** behave differently when no **fields** are passed in the request:

- **listItem** will not return any custom field.
- **externalItem** will return all the fields marked with the **retrievable** attribute in the Microsoft Graph connector schema for that particular connection.

## Keyword Query Language (KQL) support

Specify free text keywords, operators (such as `AND`, `OR`), and property restrictions in KQL syntax in the actual search query string (**query** property of the **query** request body). The syntax and command depend on the entity types (in the **entityTypes** property) you target in the same **query** request body.

Depending on the entity type, the searchable properties vary. For details, see:

- [Email properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-email-properties)
- [Site properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)

## Sort search results

Search results in the response are sorted in the following default sort order:

- **message** and **event** are sorted by date.
- All SharePoint, OneDrive and connector types are sorted by relevance.

The [query](../api/search-query.md) method lets you customize the search order by specifying the **sortProperties** on the `requests` parameter, which is a collection of [searchRequest](./searchrequest.md) objects. This allows you to specify a list of one or more sortable properties and the sort order.

Note that sorting results is currently only supported on the following SharePoint and OneDrive types: [driveItem](driveitem.md), [listItem](listitem.md), [list](list.md), [site](site.md).

The properties on which the sort clause are applied need to be sortable in the SharePoint [search schema](/sharepoint/manage-search-schema). If the property specified in the request is not sortable or does not exist, the response will return an error, `HTTP 400 Bad Request`. Note that you cannot specify to sort documents by relevance using [sortProperty](sortproperty.md).

When specifying the **name** of a [sortProperty](sortproperty.md) object, you can either use the property name from the Microsoft Graph type (for example, in [driveItem](driveitem.md)), or the name of the managed property in the search index.

See [sort search results](/graph/search-concept-sort) for examples that show how to sort results.

## Refine results using aggregations

Aggregations (also known as refiners in SharePoint) are a very popular way to enhance a search experience. In addition to the results, they provide some level of aggregate information on the matching set of search results. For example, you can provide information on the most represented authors of the documents matching the query, or the most represented file types, etc.

In the [searchRequest](./searchrequest.md), specify the aggregations that should be returned in addition to the search results. The description of each aggregation is defined in the [aggregationOption](./aggregationoption.md), which specifies the property on which the aggregation should be computed, and the number of [searchBucket](searchBucket.md) to be returned in the response.

The properties on which the aggregation is requested need to be refinable in the SharePoint [search schema](/sharepoint/manage-search-schema). If the property specified is not refinable or does not exist, the response returns `HTTP 400 Bad Request`.

Once the response is returned containing the collection of [searchBucket](searchBucket.md) objects, it is possible to refine the search request to only the matching elements contained in one [searchBucket](searchBucket.md). This is achieved by passing back the  **aggregationsFilterToken** value in the **aggregationFilters** property of the subsequent [searchRequest](./searchrequest.md).

Aggregations are currently supported for any refinable property on the following SharePoint and OneDrive types: [driveItem](driveitem.md), [listItem](listitem.md), [list](list.md), [site](site.md), and on Microsoft Graph connectors [externalItem](externalItem.md).

See [refine search results](/graph/search-concept-aggregation) for examples that show using aggregation to enhance and narrow down search results.

## Error handling

The search API returns error responses as defined by [OData error object definition](http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_ErrorResponse), each of which is a JSON object containing a code and a message.

<!---TODOSEARCHAPI Describe the know errors: bad requests.--->

## Known limitations

The search API has the following limitations:

- The **query** method is defined to allow passing a collection of one or more **searchRequest** instances at once. However, the service currently supports only a single [searchRequest](./searchrequest.md) at a time.

- The [searchRequest](./searchrequest.md) resource supports passing multiple types of entities at a time. However, currently the only supported combination is for SharePoint and OneDrive entityTypes: **driveItem**, **drive**, **site**, **list**, **listItem**.
Any combinations involving **message**, **event**, SharePoint and OneDrive types , or **externalItem** are currently not supported.  

- The **contentSource** property, which defines the connection to use, is only applicable when **entityType** is specified as `externalItem`.

- The search API does not support custom sort for **message**, **event** or  **externalItem**.

- The search API does not support aggregations for **message**, **event**, **site** or **drive**.

## Schema change deprecation warning

**In the beta version**, properties used in a search request and response have been renamed or removed. In most cases, the original properties are being deprecated and replaced by the current properties, as listed in the table below.

Start updating any existing apps to use current property and type names, and to get current property names in the response.
For backward compatibility, the original properties and types are accessible and functional until **December 31, 2020**, after which they will be removed.

| Resource                           | Change type   | Original property | Current property|
|:-----------------------------------|:--------------|:------------------|:----------------|
| [searchRequest](./searchrequest.md)| Rename property | **stored_fields** | **fields**      |
| [searchQuery](./searchquery.md)    | Rename property | **query_string** | **queryString** |
| [searchQueryString](./searchquerystring.md) | Deprecate resource | Not applicable | Not applicable |
| [searchHit](./searchhit.md)        | Rename property | **_id** | **hitId** |
| [searchHit](./searchhit.md)        | Rename property | **_score** | **rank** |
| [searchHit](./searchhit.md)        | Remove property | **_sortField** | Not applicable |
| [searchHit](./searchhit.md)        | Rename property | **_source** | **resource** |
| [searchHit](./searchhit.md)        | Rename property | **_summary**  | **summary**  |

## Search samples

- Learn more about a few key use cases:
  - [Search Outlook messages](/graph/search-concept-messages)
  - [Search calendar events](/graph/search-concept-events)
  - [Search content in Sharepoint and OneDrive](/graph/search-concept-files)
  - [Search external content](/graph/search-concept-custom-types)
  - [Sort search results](/graph/search-concept-sort)
  - [Refine search results](/graph/search-concept-aggregation)

- Explore the search APIs in  [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).


## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.