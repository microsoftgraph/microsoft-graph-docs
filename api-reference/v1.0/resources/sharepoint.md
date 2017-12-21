# Working with SharePoint sites in Microsoft Graph

The SharePoint API in Microsoft Graph supports the following core scenarios:

* Access to SharePoint **sites**, **lists**, and **drives** (document libraries)
* Read-only support for **site** resources (no ability to create new sites)
* Read-write support for **lists**, **listItems**, and **driveItems**
* Address resources by SharePoint ID, URL, or relative path

The SharePoint API exposes three major resource types:

* [Site](site.md) _(top-level object)_
* [List](list.md)
* [ListItem](listitem.md)

The following is an example of a listItem resource.

```json
{
  "fields": {
    "Title": "Access card",
    "Employee": "Ryan Gregg",
    "EmployeeId": "10",
    "CardSerial": "01235492",
    "Alias": "RGregg",
    "ID": 1,
    "ContentType": "Item",
    "Modified": "2016-09-19T23:15:25-07:00",
    "Created": "2016-09-19T23:15:25-07:00"
  },
  "createdBy": {
    "user": {
      "id": "b757fdcb-0271-4807-b243-504139e4ba04",
      "displayName": "Ryan Gregg"
    }
  },
  "createdDateTime": "2016-09-20T06:15:25Z",
  "eTag": "48e941c3-9515-4c48-9760-c07c90c79d48,1",
  "id": "4",
  "lastModifiedBy": {
    "user": {
      "id": "b757fdcb-0271-4807-b243-504139e4ba04",
      "displayName": "Ryan Gregg"
    }
  },
  "lastModifiedDateTime": "2016-09-20T06:15:25Z",
}
```

Resources expose data in three different ways:

* _Properties_ (like **id** and **name**) expose simple values.
* _Facets_ (like **fields** and **createdBy**) expose complex values.
* _References_ (like **items**) point to collections of other resources.

You can expand references in your URL with the _expand_ query parameter; for example, `?expand=fields`.
You can request specific properties and facets with the _select_ query parameter; for example, `?select=id,name`.
By default, most properties and facets are returned while all references are hidden.
For efficiency, we recommend that you specify _select_ and _expand_ to only return the data you care about.

## SharePoint API root resources

The following examples are relative to `https://graph.microsoft.com/v1.0`.

| Path                                   | Description
|:---------------------------------------|:------------------------------------
| /sites/root                            | Organization's default [site][].
| /sites/{site-id}                       | Access a specific [site][] by its ID.
| /sites/{site-id}/drive                 | Access the default [drive](drive.md) (document library) for the given [site][].
| /sites/{site-id}/drives                | Enumerate the [drives](drive.md) (document libraries) under the [site][].
| /sites/{site-id}/sites                 | Enumerate the sub-sites under the [site][].
| /sites/{site-id}/lists                 | Enumerate the [lists](list.md) under the [site](site.md).
| /sites/{site-id}/lists/{list-id}/items | Enumerate the [listItems](listitem.md) under the [list](list.md).
| /groups/{group-id}/sites/root          | Access a group's team [site][].

Sites can also be addressed by path by using the SharePoint hostname, followed by a colon and the relative path to the site.
You can optionally transition back to addressing the resource model by putting another colon at the end.

| Path                                           | Description
|:-----------------------------------------------|:-----------------------------------
| /sites/contoso.sharepoint.com:/teams/hr        | The site associated with https://contoso.sharepoint.com/teams/hr
| /sites/contoso.sharepoint.com:/teams/hr:/drive | Access the default [drive](drive.md) for this site.

## Note for existing SharePoint developers

The Microsoft Graph SharePoint API has a few key differences with the CSOM APIs.
The [site][] resource maps to `SPWeb`.
The root [site][] (`SPWeb`) in a site collection has a [siteCollection](sitecollection.md) facet, which contains information about the `SPSite`.
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
[siteCollection]: siteCollection.md

<!-- {
  "type": "#page.annotation",
  "description": "Getting started programming with the SharePoint API",
  "keywords": "getting started sharepoint rest api programming C# ios android rest http",
  "section": "documentation",
  "tocPath": "Getting Started",
  "tocIndex": -100
} -->
