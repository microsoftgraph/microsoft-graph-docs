---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: List
---
# List resource

The **list** resource represents a list in a [site][].
This resource contains the top level properties of the list, including template and field definitions.

## Tasks on a list

The following tasks are available for list resources.
**Note:** This beta only allows navigating lists, not creating or updating them.
You can, however, create or update [list items][listItem].

All examples below are relative to a site, eg: `https://graph.microsoft.com/v1.0/sites/{site-id}`.

| Common task               | HTTP method
|:--------------------------|:------------------------------
| [Get list][]              | GET /lists/{list-id}
| [Enumerate list items][]  | GET /lists/{list-id}/items
| [Update list item][]      | PATCH /lists/{list-id}/items/{item-id}
| [Delete list item][]      | DELETE /lists/{list-id}/items/{item-id}
| [Create list item][]      | POST /lists/{list-id}

[Get list]: ../api/list_get.md
[Enumerate list items]: ../api/listitem_list.md
[Update list item]: ../api/listItem_update.md
[Delete list item]: ../api/listItem_delete.md
[Create list item]: ../api/listItem_create.md

## JSON representation

Here is a JSON representation of a **list** resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "items",
    "drive"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.list"
}-->

```json
{
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  "contentTypes": [ { "@odata.type": "microsoft.graph.contentType" }],
  "displayName": "title of list",
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "items": [ { "@odata.type": "microsoft.graph.listItem" } ],
  "list": {
    "@odata.type": "microsoft.graph.listInfo",
    "hidden": false,
    "template": "documentLibrary | genericList | survey | links | announcements | contacts | accessRequest ..."
  },
  "system": false,

  /* inherited from baseItem */
  "id": "string",
  "name": "name of list",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "description": "description of list",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "webUrl": "url to visit the list in a browser"
}
```

## Properties

The **list** resource has the following properties.

| Property name    | Type                             | Description
|:-----------------|:---------------------------------|:---------------------------
| **displayName**  | string                           | The displayable title of the list.
| **list**         | [listInfo][]                     | Provides additional details about the list.
| **system**       | [systemFacet][]                  | If present, indicates that this is a system-managed list. Read-only.

The following properties are inherited from **[baseItem][]**.

| Property name            | Type              | Description
|:-------------------------|:------------------|:------------------------------
| **id**                   | string            | The unique identifier of the item. Read-only.
| **name**                 | string            | The name of the item.
| **createdBy**            | [identitySet][]   | Identity of the creator of this item. Read-only.
| **createdDateTime**      | DateTimeOffset    | The date and time the item was created. Read-only.
| **description**          | string            | The descriptive text for the item.
| **eTag**                 | string            | ETag for the item. Read-only.                                                          |
| **lastModifiedBy**       | [identitySet][]   | Identity of the last modifier of this item. Read-only.
| **lastModifiedDateTime** | DateTimeOffset    | The date and time the item was last modified. Read-only.
| **parentReference**      | [itemReference][] | Parent information, if the item has a parent. Read-write.
| **sharepointIds**        | [sharepointIds][] | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| **webUrl**               | string (url)      | URL that displays the item in the browser. Read-only.

## Relationships

The **list** resource has the following relationships to other resources.

| Relationship name | Type                             | Description
|:------------------|:---------------------------------|:----------------------
| **drive**         | [drive][]                        | Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].
| **items**         | Collection([listItem][])         | All items contained in the list.
| **columns**       | Collection([columnDefinition][]) | The collection of field definitions for this list.
| **contentTypes**  | Collection([contentType][])      | The collection of content types present in this list.

[baseItem]: baseItem.md
[contentType]: contentType.md
[drive]: drive.md
[driveItem]: driveItem.md
[columnDefinition]: columnDefinition.md
[identitySet]: identitySet.md
[itemReference]: itemreference.md
[listInfo]: listInfo.md
[listItem]: listItem.md
[sharepointIds]: sharepointIds.md
[site]: site.md
[systemFacet]: systemFacet.md

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Lists",
  "tocBookmarks": {
    "Lists": "#"
  }
} -->
