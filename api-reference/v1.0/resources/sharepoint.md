# Working with SharePoint sites in Microsoft Graph

The SharePoint API in Microsoft Graph supports the following core scenarios:

* Access to SharePoint **sites**, and **drives** (document libraries)
* Read-only support for **site** resources (no ability to create new sites)
* Read-write support for **driveItems**
* Address resources by SharePoint ID, URL, or relative path

## SharePoint API root resources

The following examples are relative to `https://graph.microsoft.com/v1.0`.

| Path                                   | Description
|:---------------------------------------|:------------------------------------
| /sites/root                            | Organization's default [site](site.md).
| /sites/{site-id}                       | Access a specific [site](site.md) by its ID.
| /sites/{site-id}/drive                 | Access the default [drive](drive.md) (document library) for the given [site](site.md).
| /sites/{site-id}/drives                | Enumerate the [drives](drive.md) (document libraries) under the [site](site.md).
| /sites/{site-id}/sites                 | Enumerate the sub-sites under the [site](site.md).
| /groups/{group-id}/sites/root          | Access a group's team [site](site.md)

Sites can also be addressed by path by using the SharePoint hostname, followed by a colon and the relative path to the site.
You can optionally transition back to addressing the resource model by putting another colon at the end.

| Path                                           | Description
|:-----------------------------------------------|:-----------------------------------
| /sites/contoso.sharepoint.com:/teams/hr        | The site associated with https://contoso.sharepoint.com/teams/hr
| /sites/contoso.sharepoint.com:/teams/hr:/drive | Access the default [drive](drive.md) for this site.

## Note for existing SharePoint developers

The Microsoft Graph SharePoint API has a few key differences with the CSOM APIs.
The [site](site.md) resource maps to `SPWeb`.
The root [site](site.md) (`SPWeb`) in a site collection has a [siteCollection](sitecollection.md) facet, which contains information about the `SPSite`.
Because IDs for sites are only unique within their site collection, addressing a site by ID requires providing both the site collection identifier and the site identifier.

```http
GET https://graph.microsoft.com/v1.0/sites/{hostname},{spsite-id},{spweb-id}/
```
A URL constructed with only the hostname will point to the root site (`SPWeb`) in the default site collection.

```http
GET https://graph.microsoft.com/v1.0/sites/{hostname}
```

A URL constructed with only the hostname and siteCollection (`SPSite`) ID will point to the root site (`SPWeb`) in the given site collection.

```http
GET https://graph.microsoft.com/v1.0/sites/{hostname},{spsite-id}
```

[site]: site.md
[list]: list.md
[drive]: drive.md
[listItem]: listItem.md
[siteCollection]: siteCollection.md

<!-- {
  "type": "#page.annotation",
  "description": "Getting started programming with the SharePoint API",
  "keywords": "getting started sharepoint rest api programming C# ios android rest http",
  "section": "documentation",
  "tocPath": "Getting Started",
  "tocIndex": -100
} -->
