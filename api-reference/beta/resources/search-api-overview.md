---
title: "Use the Microsoft Search API to query data"
description: "Using the search API, apps can search Office 365 data in the context of the authenticated user"
localization_priority: Priority
author: "nmoreau"
ms.prod: "search"
doc_type: resourcePageType
---

# Use the Microsoft Search API to query data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the Microsoft Search API to query Office 365 data in your apps.

Search requests run in the context of the signed-in user, identified using an [access token with delegated permissions](/graph/auth-v2-user).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Common use cases

The Microsoft Search API provides a [query](../api/search-query.md) method to search across your data in Microsoft Search. This section lists the common use cases, based on the properties you set in the **query** request body.

Search requests run on behalf of the user. Search results are scoped to enforce any access control applied to the items.  For example, in the context of files, permissions on the files are evaluated as part of the search request. Users cannot access more items in a search than they can from the enumeration API.

| Use cases | Properties to define in the query request body |
|:------------------|:---------|
|[Scope search based on entity types](#scope-search-based-on-entity-types)| **entityTypes** |
|[Page results](#page-search-results) | **from** and **size** |
|[Get the most relevant emails](#get-the-most-relevant-emails) | **enableTopResults** |
|[Get selected properties](#get-selected-properties) | **stored_fields** |
|[Use KQL in query terms](#keyword-query-language-kql-support) | **query** |
|[Search external Files](/graph/search-concept-files)| **entityTypes** |
|[Search within a specific contentSource (indexing API)](/graph/search-concept-custom-types)| **contentSources** |

### Scope search based on entity types

Define the scope of the search request using the **entityTypes** property in the **query** request payload.
The following are the supported entity types:

- [event](event.md)
- [message](message.md)
- [driveItem](driveitem.md)
- [externalFile](externalfile.md)
- [externalItem](externalitem.md)

### Page search results

Control pagination of the search results by specifying the following two properties in the **query** request body:

- **from** - An integer that indicates the 0-based starting point to list search results on the page. The default value is 0.

- **size** - An integer that indicates the number of results to be returned for a page. The default value is 25.

Note the following limits if you're searching the **event** or **message** entity:

- **from** must start at zero in the first page request; otherwise, the request results in an HTTP 400 `Bad request`.
- The maximum results per page (**size**) is 200.
- The maximum total number of items that can be returned by paginating is 1000.
- Going beyond the limits returns a best effort response. The request does not result in an HTTP 400.

Best practices:

- Specify a smaller first page in the initial request. For example, specify **from** as 0, **size** as 25.
- Paginate subsequent pages by updating the **from** and **size** properties. You can increase the page size in each subsequent request. The following table shows an example.

    | Page | from | size |
    |:-----|:-----|:-----|
    | 1    | 0 | 25 |
    | 2    | 25 | 50 |
    | 3    | 75 | 75 |
    | 4    | 150 | 100 |

### Get the most relevant emails

When searching the **message** entity, specifying **enableTopResults** as `true` returns a hybrid list of messages: the first three messages in the response are sorted by relevance; the remaining messages are sorted by date.

### Get selected properties

When searching an **externalItem** entity, use the **stored_fields** property to specify the fields to be returned in the response.

The fields specified in **stored_fields** should be retrievable managed properties that have been configured for the connection via the Microsoft Search tenant administration.

### Keyword Query Language (KQL) support

Specify free text keywords, operators (such as `AND`, `OR`), and property restrictions in KQL syntax in the actual search query string (**query** property of the **query** request body). The syntax and command depend on the entity types (in the **entityTypes** property) you target in the same **query** request body.

Depending on the entity type, the searchable properties vary. For details, see:

- [Email properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-email-properties)
- [Site properties](/microsoft-365/compliance/keyword-queries-and-search-conditions#searchable-site-properties)

## Error handling

The search API returns error responses as defined by [OData error object definition](http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_ErrorResponse), each of which is a JSON object containing a code and a message.

<!---TODO Describe the know errors : bad requests.--->

## Known limitations

The search API has the following limitations:

- The **query** method is defined to allow passing a collection of one or more **searchRequest** instances at once. However, the service currently supports only a single [searchRequest](./searchrequest.md) at a time.

- The [searchRequest](./searchrequest.md) resource supports passing multiple types of entities at a time. However, currently the only supported combination is **driveItem** and **externalFile**. Other combinations are invalid.

- The **contentSource** property, which defines the connection to use, is only applicable when **entityType** is specified as `externalItem`.
<!--todo nmoreauteam Fix the link to ContentSource  pls provide the content source url--->

- The search API does not support custom sort and always sorts results in the following ways:

  - Sort **message** or **event** type results by date.

  - Sort **driveItem**, **externalFile**, or **externalItem** type results by relevance.
