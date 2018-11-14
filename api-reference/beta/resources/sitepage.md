---
author: rahmit
ms.author: rahmit
ms.date: 03/15/2018
title: SitePage
---
# sitePage resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This resource represents a page in the SitePages [list][].
It contains the title, layout, and a collection of [webPart][]s.

## Tasks on a page

The following tasks are available for **sitePage** resources.
All examples below are relative to a [site][], eg: `https://graph.microsoft.com/{api-version}/sites/{site-id}`.

| Common task                     | HTTP method
|:--------------------------------|:------------------------------
| [List pages][]                  | GET /pages
| [Get page][]                    | GET /pages/{page-id}
| [Create][]                      | POST /pages
| [Delete][]                      | DELETE /pages/{page-id}
| [Publish][]                     | POST /pages/{page-id}/publish

[List pages]: ../api/sitepage_list.md
[Get page]: ../api/sitepage_get.md
[Create]: ../api/sitepage_create.md
[Delete]: ../api/sitepage_delete.md
[Publish]: ../api/sitepage_publish.md

## JSON representation

Here is a JSON representation of a **sitePage** resource.

<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.sitePage"
}-->

```json
{
  "contentType": { "@odata.type": "microsoft.graph.contentTypeInfo" },

  /* page content */
  "title": "string",
  "pageLayout": "Article",
  "webParts": [{ "@odata.type": "microsoft.graph.sitePageWebParts" }],

  /* authoring metadata */
  "publishingState": { "@odata.type": "microsoft.graph.publicationFacet" },

  /* inherited from baseItem */
  "id": "string",
  "name": "string",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "datetime",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "webUrl": "url"
}
```

## Properties

The **sitePage** resource has the following properties.

| Property name    | Type                         | Description
|:-----------------|:-----------------------------|:---------------------------
| contentType      | [contentTypeInfo][]          | The content type of the page.

## Page Content

The **sitePage** resource has the following content fields.

| Property name      | Type                       | Description
|:-------------------|:---------------------------|:---------------------------
| title              | string                     | The title of the page.
| pageLayout         | string                     | The name of the page layout of the page.
| webParts           | [webPart][]                | The web parts on the page.

## Authoring Metadata

The **sitePage** resource has the following authoring-related metadata. The publishingState property will reflect the page authoring state like checked out or published.

| Property name          | Type                   | Description
|:-----------------------|:-----------------------|:---------------------------
| publishingState        | [publicationFacet][]   | The publishing status and the MM.mm version of the page.

The following properties are inherited from **[baseItem][]**.

| Property name        | Type              | Description
|:---------------------|:------------------|:----------------------------------
| id                   | string            | The unique identifier of the item. Read-only.
| name                 | string            | The name / title of the item.
| createdBy            | [identitySet][]   | Identity of the creator of this item. Read-only.
| eTag                 | string            | ETag for the item. Read-only.
| lastModifiedBy       | [identitySet][]   | Identity of the last modifier of this item. Read-only.
| lastModifiedDateTime | DateTimeOffset    | The date and time the item was last modified. Read-only.
| parentReference      | [itemReference][] | The date and time the item was last modified. Read-only.
| webUrl               | string (url)      | URL that displays the item in the browser. Read-only.

## Relationships

The **sitePage** resource does not have relationships to other resources.

[baseItem]: baseItem.md
[contentTypeInfo]: contentTypeInfo.md
[columnDefinition]: columnDefinition.md
[identitySet]: identitySet.md
[itemReference]: itemReference.md
[list]: list.md
[listInfo]: listInfo.md
[listItem]: listItem.md
[publicationFacet]: publicationFacet.md
[site]: site.md
[webPart]: webPart.md

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Page",
  "tocBookmarks": {
    "Page": "#"
  }
} -->

<!--
TODO:
* Define {page-id}
* Update examples
    * Be consistent with other URLs in the documentation.
    * Try to use the same site, library, etc.
    * Add the URL to the underlying list item resource in the API
* PATCH for list item patches /item/{item-id}/fields.
-->
