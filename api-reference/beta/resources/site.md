---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Site
---
# site resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **site** resource provides metadata and relationships for a SharePoint site.

## Methods

| Method                         | REST Path
|:-------------------------------|:--------------------------------------------
| [Get root site][]              | GET /sites/root
| [Get site][]                   | GET /sites/{site-id}
| [Get site by path][]           | GET /sites/{hostname}:/{site-path}
| [Get site for a group][]       | GET /groups/{group-id}/sites/root
| [Get analytics][]              | GET /sites/{site-id}/analytics
| [Get activities by interval][] | GET /sites/{site-id}/getActivitiesByInterval
| [List pages][]                 | GET /sites/{site-id}/pages
| [List root sites][]            | GET /sites?filter=root ne null&select=siteCollection,webUrl
| [Search for sites][]           | GET /sites?search={query}

[Get site]: ../api/site_get.md
[Get root site]: ../api/site_get.md
[Get site by path]: ../api/site_getbypath.md
[Get site for a group]: ../api/site_get.md
[Get analytics]: ../api/itemAnalytics_get.md
[Get activities by interval]: ../api/itemActivity_getByInterval.md
[List pages]: ../api/sitepage_list.md
[List root sites]: ../api/site_list.md
[Search for sites]: ../api/site_search.md


## Properties

| Property name            | Type               | Description
|:-------------------------|:-------------------|:-----------------------------
| **id**                   | string             | The unique identifier of the item. Read-only.
| **createdDateTime**      | DateTimeOffset     | The date and time the item was created. Read-only.
| **description**          | string             | The descriptive text for the site.
| **eTag**                 | string             | ETag for the item. Read-only.                                                                  |
| **displayName**          | string             | The full title for the site. Read-only.
| **lastModifiedDateTime** | DateTimeOffset     | The date and time the item was last modified. Read-only.
| **name**                 | string             | The name / title of the item.
| **root**                 | [root][]           | If present, indicates that this is the root site in the site collection. Read-only.
| **sharepointIds**        | [sharepointIds][]  | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| **siteCollection**       | [siteCollection][] | Provides details about the site's site collection. Available only on the root site. Read-only.
| **webUrl**               | string (url)       | URL that displays the item in the browser. Read-only.

## Relationships

| Relationship name | Type                             | Description
|:------------------|:---------------------------------|:----------------------
| **analytics**     | [itemAnalytics][] resource       | Analytics about the view activities that took place in this site.
| **columns**       | Collection([columnDefinition][]) | The collection of column definitions reusable across lists under this site.
| **contentTypes**  | Collection([contentType][])      | The collection of content types defined for this site.
| **drive**         | [drive][]                        | The default drive (document library) for this site.
| **drives**        | Collection([drive][])            | The collection of drives (document libraries) under this site.
| **items**         | Collection([baseItem][])         | Used to address any item contained in this site. This collection cannot be enumerated.
| **lists**         | Collection([list][])             | The collection of lists under this site.
| **pages**         | Collection([sitePage][])         | The collection of pages in the SitePages list in this site.
| **sites**         | Collection([site][])             | The collection of the sub-sites under this site.

[columnDefinition]: columndefinition.md
[baseItem]: baseitem.md
[contentType]: contentType.md
[drive]: drive.md
[identitySet]: identityset.md
[itemAnalytics]: itemAnalytics.md
[list]: list.md
[sitePage]: sitePage.md
[root]: root.md
[site]: site.md
[sharepointIds]: sharepointIds.md
[siteCollection]: siteCollection.md

## JSON representation

Here is a JSON representation of a **site** resource.

The **site** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "root",
    "sharepointIds",
    "siteCollection",
    "drive",
    "drives",
    "sites"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.site"
}-->

```json
{
  "id": "string",
  "root": { "@odata.type": "microsoft.graph.root" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "siteCollection": {"@odata.type": "microsoft.graph.siteCollection"},
  "displayName": "string",

  /* relationships */
  "analytics": { "@odata.type": "microsoft.graph.itemAnalytics" },
  "contentTypes": [ { "@odata.type": "microsoft.graph.contentType" }],
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "drives": [ { "@odata.type": "microsoft.graph.drive" }],
  "items": [ { "@odata.type": "microsoft.graph.baseItem" }],
  "lists": [ { "@odata.type": "microsoft.graph.list" }],
  "sites": [ { "@odata.type": "microsoft.graph.site"} ],
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],

  /* inherited from baseItem */
  "name": "string",
  "createdDateTime": "datetime",
  "description": "string",
  "eTag": "string",
  "lastModifiedDateTime": "datetime",
  "webUrl": "url"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Sites",
  "tocBookmarks": { "Resources/Site": "#" }
} -->
