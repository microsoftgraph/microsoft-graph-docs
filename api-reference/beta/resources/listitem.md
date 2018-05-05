---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: ListItem
---
# ListItem resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This resource represents an item in a SharePoint **[list][]**.
Column values in the list are available through the `fieldValueSet` dictionary.

## Tasks on a listItem

The following tasks are available for **listItem** resources.
All examples below are relative to a **[list][]**, eg: `https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}`.

| Common task                    | HTTP method
|:-------------------------------|:------------------------
| [Get][]                        | GET /items/{item-id}
| [Get column values][Get]       | GET /items/{item-id}?expand=fields
| [Create][]                     | POST /items
| [Delete][]                     | DELETE /items/{item-id}
| [Update][]                     | PATCH /items/{item-id}
| [Update column values][Update] | PATCH /items/{item-id}/fields

[Get]: ../api/listItem_get.md
[Create]: ../api/listItem_create.md
[Delete]: ../api/listItem_delete.md
[Update]: ../api/listItem_update.md

## JSON representation

Here is a JSON representation of a **listItem** resource.

<!-- { "blockType": "resource", 
       "@odata.type": "microsoft.graph.listItem",
       "keyProperty": "id" } -->

```json
{
  "contentType": { "@odata.type": "microsoft.graph.contentType" },
  "fields": { "@odata.type": "microsoft.graph.fieldValueSet" },

  /* relationships */
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "driveItem": { "@odata.type": "microsoft.graph.driveItem" },
  "versions": [{"@odata.type": "microsoft.graph.listItemVersion"}],

  /* inherited from baseItem */
  "id": "string",
  "name": "name of resource",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "description": "description of resource",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "webUrl": "url"
}
```

## Properties

The **listItem** resource has the following properties.

| Property name | Type                | Description
|:--------------|:--------------------|:-------------------------------
| contentType   | [contentTypeInfo][] | The content type of this list item
| fields        | [fieldValueSet][]   | The values of the columns set on this list item.

The following properties are inherited from **[baseItem][]**.

| Property name        | Type             | Description
|:---------------------|:-----------------|:-----------------------------------
| id                   | string           | The unique identifier of the item. Read-only.
| name                 | string           | The name / title of the item.
| createdBy            | [identitySet][]  | Identity of the creator of this item. Read-only.
| createdDateTime      | DateTimeOffset   | The date and time the item was created. Read-only.
| description          | string           | The descriptive text for the item.
| lastModifiedBy       | [identitySet][]  | Identity of the last modifier of this item. Read-only.
| lastModifiedDateTime | DateTimeOffset   | The date and time the item was last modified. Read-only.
| webUrl               | string (url)     | URL that displays the item in the browser. Read-only.

## Relationships

 The **listItem** resource has the following relationships to other resources.

| Relationship name | Type                           | Description
|:------------------|:-------------------------------|:-------------------------------
| activities        | [itemActivity][] collection    | The list of recent activities that took place on this item.
| driveItem         | [driveItem][]                  | For document libraries, the **driveItem** relationship exposes the listItem as a **[driveItem][]**
| versions          | [listItemVersion][] collection | The list of previous versions of the list item.

[baseItem]: baseItem.md
[contentTypeInfo]: contentTypeInfo.md
[driveItem]: driveItem.md
[fieldValueSet]: fieldValueSet.md
[identitySet]: identitySet.md
[itemActivity]: itemActivity.md
[list]: list.md
[listItemVersion]: listItemVersion.md

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ListItem",
  "tocBookmarks": {
    "ListItem": "#"
  }
} -->
