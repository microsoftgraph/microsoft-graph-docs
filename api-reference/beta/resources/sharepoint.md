# Working with SharePoint sites in Microsoft Graph

>**Note:** this functionality is an early developer preview and is only available through the Microsoft Graph API **beta** endpoint.
The API design is likely to change as we incorporate feedback from developers.

The SharePoint API in Microsoft Graph supports the following core scenarios:

* Access to SharePoint **sites**, **lists**, and **drives** (via document libraries)
* Read-only support for **site** and **list** resources (no ability create new sites or lists)
* Read-write support for **listItems** and **driveItems**
* Address resources by SharePoint ID, URL, or relative path

The SharePoint API exposes three major resource types:

* [Site](site.md) _(top-level object)_
* [List](list.md)
* [ListItem](listitem.md)

The following is an example of a listItem resource.

```json
{
  "columnSet": {
    "Title": "Access card",
    "Employee": "Ryan Gregg",
    "EmployeeId": 10,
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
  "id": "48e941c3-9515-4c48-9760-c07c90c79d48",
  "lastModifiedBy": {
    "user": {
      "id": "b757fdcb-0271-4807-b243-504139e4ba04",
      "displayName": "Ryan Gregg"
    }
  },
  "lastModifiedDateTime": "2016-09-20T06:15:25Z",
  "listItemId": 1
}
```

Resources expose data in three different ways:

* _Properties_ (like **id** and **name**) expose simple values.
* _Facets_ (like **columnSet** and **createdBy**) expose complex values.
* _References_ (like **items**) point to collections of other resources.

You can expand references in your URL with the _expand_ query parameter; for example, `?expand=items`.
You can request specific properties and facets with the _select_ query parameter; for example, `?select=id,columnSet`.
By default, most properties and facets are returned while all references are hidden.
For efficiency, we recommend that you specify _select_ and _expand_ to only return the data you care about.

## SharePoint API root resources

The main entry point for SharePoint data is the **sharepoint** reference under the root. The following examples are relative to `https://graph.microsoft.com/beta`.

| Path                                              | Resource
|:--------------------------------------------------|:-------------------------
| /sharepoint/site                                  | Organization's default [site](site.md).
| /sharepoint/sites                                 | Enumerates sites in the organization. **Note: Beta currently only returns the default site**
| /sharepoint/sites/{site-id}                       | Access a specific [site](site.md) by its ID.
| /sharepoint/sites/{site-id}/sites                 | Enumerate the sub-sites under the [site](site.md).
| /sharepoint/sites/{site-id}/lists                 | Enumerate the [lists](list.md) under the [site](site.md).
| /sharepoint/sites/{site-id}/lists/{list-id}/items | Enumerate the [listItems](listitem.md) under the [list](list.md).
| /sharepoint/sites/{site-id}/drives                | Enumerate the [drives](drive.md) (document libraries) under the [site](site.md).

Items can also be addressed by path by putting a colon after the **sharepoint** segment, followed by the path to the item.
You can optionally transition back to addressing the resource model by putting another colon at the end.

| Path                                               | Resource
|:---------------------------------------------------|:------------------------
| /sharepoint:/teams/hr                              | The site associated with https://contoso.sharepoint.com/teams/hr
| /sharepoint:/teams/hr/Lists/Employees              | The list associated with https://contoso.sharepoint.com/teams/hr/Lists/Employees
| /sharepoint:/teams/hr:/lists/{list-id}             | Addressing the same list by ID.
| /sharepoint:/teams/hr/Documents/NewHireGuide.docx  | The file associated with https://contoso.sharepoint.com/teams/hr/Documents/NewHireGuide.docx


## Note for existing SharePoint developers

The Microsoft Graph SharePoint API has a few key differences with the existing CSOM APIs.
The [site](site.md) resource maps to `SPWeb`.
The root [site](site.md) (`SPWeb`) in a site collection has a [siteCollection](sitecollection.md) facet, which contains information about the `SPSite`.
Because IDs for sites are only unique within their site collection, addressing a site by ID requires providing both the site collection identifier and the site identifier.

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{spsite-id},{spweb-id}/
```

A URL constructed with only the siteCollection (`SPSite`) ID will point to the root site (`SPWeb`) in that site collection.

```http
GET https://graph.microsoft.com/beta/sharepoint/sites/{spsite-id}/
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
