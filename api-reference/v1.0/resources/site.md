# Site resource

The **site** resource provides metadata and relationships for a SharePoint site.

## Tasks

All examples below are relative to `https://graph.microsoft.com/v1.0`.

| Task name            | Example Request                                   |
| :------------------- | :------------------------------------------------ |
| [Get root site][]    | GET /sites/root                                   |
| [Get site][]         | GET /sites/{site-id}                              |
| [Get site by path][] | GET /sites/{hostname}:/{site-path}                |

[Get site]: ../api/site_get.md
[Get root site][]: ../api/site_get.md
[Get site by path]: ../api/site_get.md

## JSON representation

Here is a JSON representation of a **site** resource.

The **driveItem** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!-- { "blockType": "resource",
       "@odata.type": "microsoft.graph.site",
       "keyProperty": "id",
       "optionalProperties": [ "root", "sharepointIds", "siteCollection", "drive", "drives", "sites" ] } -->

```json
{
  "id": "string",
  "root": { "@odata.type": "microsoft.graph.root" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "siteCollection": {"@odata.type": "microsoft.graph.siteCollection"},
  "displayName": "string",

  /* relationships */
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "drives": [ { "@odata.type": "microsoft.graph.drive" }],
  "items": [ { "@odata.type": "microsoft.graph.baseItem" }],
  "sites": [ { "@odata.type": "microsoft.graph.site"} ],

  /* inherited from baseItem */
  "name": "string",
  "createdDateTime": "datetime",
  "description": "string",
  "eTag": "string",
  "lastModifiedDateTime": "datetime",
  "webUrl": "url"
}
```

## Properties

| Property name            | Type                                | Description                                                                                    |
| :----------------------- | :---------------------------------- | :--------------------------------------------------------------------------------------------- |
| **id**                   | string                              | The unique identifier of the item. Read-only.                                                  |
| **createdDateTime**      | DateTimeOffset                      | The date and time the item was created. Read-only.                                             |
| **description**          | string                              | The descriptive text for the site.                                                             |
| **displayName**          | string                              | The full title for the site. Read-only.                                                        |
| **lastModifiedDateTime** | DateTimeOffset                      | The date and time the item was last modified. Read-only.                                       |
| **name**                 | string                              | The name / title of the item.                                                                  |
| **root**                 | [root][root.md]                     | If present, indicates that this is the root site in the site collection. Read-only.            |
| **sharepointIds**        | [sharepointIds](sharepointids.md)   | Returns identifiers useful for SharePoint REST compatibility. Read-only.                       |
| **siteCollection**       | [siteCollection](sitecollection.md) | Provides details about the site's site collection. Available only on the root site. Read-only. |
| **webUrl**               | string (url)                        | URL that displays the item in the browser. Read-only.                                          |

## Relationships

| Relationship name | Type                     | Description
|:------------------|:-------------------------|:----------------------------------
| **drive**         | [drive][]                | The default drive (document library) for this site.
| **drives**        | Collection([drive][])    | The collection of drives (document libraries) under this site.
| **items**         | Collection([baseItem][]) | Used to address any item contained in this site. This collection cannot be enumerated.
| **sites**         | Collection([site][])     | The collection of the sub-sites under this site.

[baseItem]: baseItem.md
[drive]: drive.md
[identitySet]: identitySet.md
[site]: site.md

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
