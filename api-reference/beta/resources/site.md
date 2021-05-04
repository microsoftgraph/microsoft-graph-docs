---
author: JeremyKelley
description: "The site resource provides metadata and relationships for a SharePoint site."
ms.date: 09/10/2017
title: Site
localization_priority: Priority
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---
# site resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
| [Follow site][]                | POST /users/{user-id}/followedSites/add
| [Unfollow site][]              | POST /users/{user-id}/followedSites/remove
| [List followed sites][]        | GET /me/followedSites
| [Get permission][]             | GET /sites/{site-id}/permissions/{permission-id}
| [List permissions][]           | GET /sites/{site-id}/permissions
| [Create permissions][]         | POST /sites/{site-id}/permissions
| [Delete permission][]         | DELETE /sites/{site-id}/permissions/{permission-id}
| [Update permission][]         | PATCH /sites/{site-id}/permissions/{permission-id}
|[List content types][]          | GET /sites/{site-id}/contentTypes
|[Create contentType][]        | POST /sites/{site-id}/contentTypes
|[List columns][]               | GET /sites/{site-id}/columns
|[Create column][]              | POST /sites/{site-id}/columns

[Get site]: ../api/site-get.md
[Get root site]: ../api/site-get.md
[Get site by path]: ../api/site-getbypath.md
[Get site for a group]: ../api/site-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivity-getbyinterval.md
[List pages]: ../api/sitepage-list.md
[List root sites]: ../api/site-list.md
[Search for sites]: ../api/site-search.md
[Follow site]: ../api/site-follow.md
[Unfollow site]: ../api/site-unfollow.md
[List followed sites]: ../api/sites-list-followed.md
[Get permission]: ../api/site-get-permission.md
[List permissions]: ../api/site-list-permissions.md
[Create permissions]: ../api/site-post-permissions.md
[Delete permission]: ../api/site-delete-permission.md
[Update permission]: ../api/site-update-permission.md
[List content types]: ../api/site-list-contenttypes.md
[Create contentType]: ../api/site-post-contenttypes.md
[List columns]: ../api/site-list-columns.md
[Create column]: ../api/site-post-columns.md


## Properties

| Property name            | Type               | Description
|:-------------------------|:-------------------|:-----------------------------
| **id**                   | string             | The [unique identifier](#id-property) of the item. Read-only.
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

### id property
A **site** is identified by a unique ID that is a composite of the following values:
* Site collection hostname (contoso.sharepoint.com)
* Site collection unique ID (GUID)
* Site unique ID (GUID)
  
The `root` identifier always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.

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
| **permissions**   | Collection([permission][])         | The permissions associated with the site. Nullable.
| **sites**         | Collection([site][])             | The collection of the sub-sites under this site.
| **termStore**     | [microsoft.graph.termStore.store]  | The termStore under this site.
| **externalColumns**     | Collection([columnDefinition][])  | The collection of column definitions available in the site that are referenced from the sites in the parent hierarchy of the current site.

[columnDefinition]: columndefinition.md
[baseItem]: baseitem.md
[contentType]: contenttype.md
[drive]: drive.md
[identitySet]: identityset.md
[itemAnalytics]: itemanalytics.md
[list]: list.md
[permission]: permission.md
[sitePage]: sitepage.md
[root]: root.md
[site]: site.md
[sharepointIds]: sharepointids.md
[siteCollection]: sitecollection.md
[microsoft.graph.termStore.store]: termstore-store.md

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
    "permissions",
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
  "permissions": [ { "@odata.type": "microsoft.graph.permission" }],
  "sites": [ { "@odata.type": "microsoft.graph.site"} ],
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  "termStore": { "@odata.type": "microsoft.graph.termStore.store" },
  "externalColumns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  /* inherited from baseItem */
  "name": "string",
  "createdDateTime": "datetime",
  "description": "string",
  "eTag": "string",
  "lastModifiedDateTime": "datetime",
  "webUrl": "url"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Sites",
  "tocBookmarks": {
    "Resources/Site": "#"
  },
  "suppressions": []
}
-->
