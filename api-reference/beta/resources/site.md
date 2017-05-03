# Site resource

The **site** resource provides metadata and relationships for a SharePoint site.

## Tasks

All examples below are relative to `https://graph.microsoft.com/beta`.

| Task name            | Example Request
|:---------------------|:------------------------------------------------------
| [Get site][]         | GET /sharepoint/sites/{site-id}
| [Get lists][]        | GET /sharepoint/sites/{site}/lists
| [Get list item][]    | GET /sharepoint/sites/{site}/lists/{list-id}/items/{item-id}
| [Get site by path][] | GET /sharepoint:/{site-path}:/

[Get site]: ../api/site_get.md
[Get site by path]: ../api/baseItem_getByUrl.md
[Get lists]: ../api/lists_list.md
[Get list item]: ../api/listItem_get.md

## JSON representation

Here is a JSON representation of a **site** resource.
Properties after the blank line are inherited from **[baseItem][]**.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.site",
       "keyProperty": "id", "optionalProperties": [ ] } -->

```json
{
  "root": { "@odata.type": "microsoft.graph.root" },
  "siteCollection": {"@odata.type": "microsoft.graph.siteCollection"},
  "siteCollectionId": "guid",
  "siteId": "guid",
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "drives": [ { "@odata.type": "microsoft.graph.drive" }],
  "items": [ { "@odata.type": "microsoft.graph.baseItem" }],
  "lists": [ { "@odata.type": "microsoft.graph.list" }],
  "sites": [ { "@odata.type": "microsoft.graph.site"} ],
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],

  "id": "string",
  "name": "name of site",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "description": "description of site",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "webUrl": "url to visit site in a browser"
}
```

## Properties

The **site** resource has these properties.

| Property name        | Type                    | Description
|:---------------------|:------------------------|:---------------------------------
| **root**             | [root facet][rootfacet] | If present, indicates that this is the root site in the site collection. Read-only.
| **siteCollection**   | [siteCollection][]      | Provides details about the site's site collection. Available only on the root site. Read-only.
| **siteCollectionId** | guid                    | The SharePoint unique identifier for the site's site collection. Read-only.
| **siteId**           | guid                    | The SharePoint unique identifier for the site. Read-only.

The following properties are inherited from **[baseItem][]**.

| Property name            | Type             | Description
|:-------------------------|:-----------------|:-------------------------------
| **id**                   | string           | The unique identifier of the item. Read-only.
| **name**                 | string           | The name / title of the item.
| **createdBy**            | [identitySet][]  | Identity of the creator of this item. Read-only.
| **createdDateTime**      | DateTimeOffset   | The date and time the item was created. Read-only.
| **description**          | string           | The descriptive text for the site.
| **lastModifiedBy**       | [identitySet][]  | Identity of the last modifier of this item. Read-only.
| **lastModifiedDateTime** | DateTimeOffset   | The date and time the item was last modified. Read-only.
| **webUrl**               | string (url)     | URL that displays the item in the browser. Read-only.

## Relationships

The **site** resource has the following relationships to other resources.

| Relationship name | Type                             | Description
|:------------------|:---------------------------------|:----------------------
| **columns**       | Collection([columnDefinition][]) | The collection of column definitions reusable across lists under this site.
| **drive**         | [drive][]                        | The default drive (document library) for this site.
| **drives**        | Collection([drive][])            | The collection of drives (document libraries) under this site.
| **items**         | Collection([baseItem][])         | Used to address any item contained in this site. This collection cannot be enumerated.
| **lists**         | Collection([list][])             | The collection of lists under this site.
| **sites**         | Collection([site][])             | The collection of the sub-sites under this site.

[column]: columnDefinition.md
[baseItem]: baseItem.md
[drive]: drive.md
[identitySet]: identitySet.md
[list]: list.md
[rootfacet]: rootFacet.md
[site]: site.md
[siteCollection]: siteCollection.md

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Site",
  "tocBookmarks": {
    "Site": "#"
  }
} -->
