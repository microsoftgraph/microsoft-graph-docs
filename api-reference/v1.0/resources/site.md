---
author: JeremyKelley
ms.author: JeremyKelley
title: site resource
description: The site resource provides metadata and relationships for a Sharepoint site. 
localization_priority: Priority
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# site resource

Namespace: microsoft.graph

The **site** resource provides metadata and relationships for a SharePoint site.

## Methods

| Method                | Return type | Description
|:-------------------------|:-------------|:----------
| [Get root site][]        | site | Access the root SharePoint site within a tenant.
| [Get site][]             | site | Access a sharePoint site using the siteId.
| [Get site by path][]     | site | Access the root SharePoint site with a relative path.
| [Get site for a group][] | site | Access the team site for a group.
| [Get analytics][]              | [itemAnalytics][] | Get analytics for this resource. 
| [Get activities by interval][] | [itemActivityStat][] | Get a collection of **itemActivityStats** within the specified time interval.
| [Search for sites][]     | collection of site | Search across a SharePoint tenant for sites that match keywords provided.
| [Follow site][]          | collection of site | Follow a user's site or multiple sites.
| [Unfollow site][]        | collection of site | Follow a user's site or multiple sites.
| [List followed sites][]  | collection of site | List the sites that have been followed by the signed in user.

[Get site]: ../api/site-get.md
[Get root site]: ../api/site-get.md
[Get site by path]: ../api/site-getbypath.md
[Get site for a group]: ../api/site-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivitystat-getactivitybyinterval.md
[Search for sites]: ../api/site-search.md
[itemActivityStat]: itemactivitystat.md
[Follow site]: ../api/site-follow.md
[Unfollow site]: ../api/site-unfollow.md
[List followed sites]: ../api/sites-list-followed.md

## Properties

| Property            | Type                                | Description                                                                                    |
| :----------------------- | :---------------------------------- | :--------------------------------------------------------------------------------------------- |
| **id**                   | string                              | The unique identifier of the item. Read-only.                                                  |
| **createdDateTime**      | DateTimeOffset                      | The date and time the item was created. Read-only.                                             |
| **description**          | string                              | The descriptive text for the site.                                                             |
| **displayName**          | string                              | The full title for the site. Read-only.                                                        |
| **eTag**                 | string                              | ETag for the item. Read-only.                                                                  |
| **lastModifiedDateTime** | DateTimeOffset                      | The date and time the item was last modified. Read-only.                                       |
| **name**                 | string                              | The name / title of the item.                                                                  |
| **root**                 | [root](root.md)                     | If present, indicates that this is the root site in the site collection. Read-only.            |
| **sharepointIds**        | [sharepointIds](sharepointids.md)   | Returns identifiers useful for SharePoint REST compatibility. Read-only.                       |
| **siteCollection**       | [siteCollection](sitecollection.md) | Provides details about the site's site collection. Available only on the root site. Read-only. |
| **webUrl**               | string (url)                        | URL that displays the item in the browser. Read-only.                                          |

### id property
A **site** is identified by a unique ID that is a composite of the following values:
* Site collection hostname (contoso.sharepoint.com)
* Site collection unique ID (GUID)
* Site unique ID (GUID)
  
The `root` identifier always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.
  
## Relationships

| Relationship      | Type                             | Description
|:------------------|:---------------------------------|:----------------------
| **analytics**     | [itemAnalytics][] resource       | Analytics about the view activities that took place in this site.
| **columns**       | Collection([columnDefinition][]) | The collection of column definitions reusable across lists under this site.
| **contentTypes**  | Collection([contentType][])      | The collection of content types defined for this site.
| **drive**         | [drive][]                        | The default drive (document library) for this site.
| **drives**        | Collection([drive][])            | The collection of drives (document libraries) under this site.
| **items**         | Collection([baseItem][])         | Used to address any item contained in this site. This collection cannot be enumerated.
| **lists**         | Collection([list][])             | The collection of lists under this site.
| **sites**         | Collection([site][])             | The collection of the sub-sites under this site.
| **onenote**       | [onenote][]                      | Calls the OneNote service for notebook related operations.

[columnDefinition]: columndefinition.md
[baseItem]: baseitem.md
[contentType]: contenttype.md
[drive]: drive.md
[identitySet]: identityset.md
[itemAnalytics]: itemanalytics.md
[list]: list.md
[site]: site.md
[onenote]: onenote.md

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
  "onenote": { "@odata.type": "microsoft.graph.onenote"},

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

