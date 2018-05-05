---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: SharePointIds
---
# SharePointIds resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **SharePointIds** resource groups the various identifiers for an item stored in a SharePoint site or OneDrive for Business into a single structure.

**Note:** items returned from OneDrive personal will not include a **SharePointIds** facet.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "listId", "listItemId", "listItemUniqueId", "siteId", "siteUrl", "webId" ],
  "@odata.type": "microsoft.graph.sharepointIds"
}-->

```json
{
    "listId": "string",
    "listItemId": "string",
    "listItemUniqueId": "string",
    "siteId": "string",
    "siteUrl": "url",
    "tenantId": "string",
    "webId": "string"
}
```

## Properties

| Property         | Type         | Description
|:-----------------|:-------------|:-------------------------------------------
| listId           | string       | The unique identifier (guid) for the item's list in SharePoint.
| listItemId       | string       | An integer identifier for the item within the containing list.
| listItemUniqueId | string       | The unique identifier (guid) for the item within OneDrive for Business or a SharePoint site.
| siteId           | string       | The unique identifier (guid) for the item's site collection (SPSite).
| siteUrl          | string (url) | The SharePoint URL for the site that contains the item.
| tenantId         | string       | The unique identifier (guid) for the tenancy.
| webId            | string       | The unique identifier (guid) for the item's site (SPWeb).

## Remarks

For more information about the facets on a **driveItem**, see [**driveItem**](driveitem.md).



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The SharepointIds facet provides Sharepoint ids associated with an item.",
  "keywords": "item, unique, id, csom, facet",
  "section": "documentation",
  "tocPath": "Facets/SharepointIds"
} -->
