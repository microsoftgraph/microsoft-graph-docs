# Best practices for working with the OneNote API in Microsoft Graph

This article provides recommendations for working with the OneNote APIs in Microsoft Graph. These recommendations are based on answers to common questions on Stack Overflow and Twitter.

## Use $select to select the minimum set of properties you need
When you query for a resource (for example, sections inside a notebook), you make a request similar to the following.

```http
GET ~/notebooks/{id}/sections
```

This retrieves all the properties of the sections. However, you might not need all properties. You can use the `$select` query parameter to return just the properties that you want, as shown in the following example.

```http
GET ~/notebooks/{id}/sections?$select=id,displayName
```

The same approach applies to other OneNote APIs.

## Use $expand instead of making multiple API calls
Suppose you want to retrieve all of the user’s notebooks, sections, and section groups in a hierarchical view. You might accomplish that by doing the following:

* Call `GET ~/notebooks` to get the list of notebooks.
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sections` to retrieve the list of sections.
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sectionGroups` to retrieve the list of section groups.
* Optionally recursively iterate through section groups.

While this will work (with a few extra sequential roundtrips to the service), a better approach is to use the `$expand` query parameter. 

```http
GET ~/notebooks?$expand=sections,sectionGroups($expand=sections)
```

This will yield the same results in one network roundtrip, with better performance.

## When getting all pages for a user, do so for each section separately

While Microsoft Graph exposes an endpoint to retrieve all pages, this isn't the best way to get all the pages the user has access to. When the user has too many sections, this can lead to timeouts or bad performance. It is better to iterate each section, getting pages for each one separately.

For example, instead of using this call (this API is paged, so you won't be able to fetch the pages all at once):

```http
GET ~/pages
```

It is better to use the following call several times (especially if you don't need all sections):

```http
GET ~/sections/{id}/pages
```

When getting page metadata, override the default `lastModifiedDateTime` ordering. It is faster to get pages when you don't have to sort them by `lastModifiedDateTime`. To do this, you can sort by any other property; for example:

```http
GET ~/sections/{id}/pages?$select=id,title,createdDateTime&$orderby=createdDateTime
```
