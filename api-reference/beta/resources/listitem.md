---
author: JeremyKelley
description: "This resource represents an item in a SharePoint list."
ms.date: 09/11/2017
title: ListItem
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# ListItem resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents an item in a SharePoint **[list][]**.
Column values in the list are available through the `fieldValueSet` dictionary.

## Tasks on a listItem

The following tasks are available for **listItem** resources.
All examples below are relative to a **[list][]**, eg: `https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}`.

| Common task                    | HTTP method
|:-------------------------------|:------------------------
| [Get][]                        | GET /items/{item-id}
| [Get column values][Get]       | GET /items/{item-id}?expand=fields
| [Get analytics][]              | GET /items/{item-id}/analytics
| [Get activities by interval][] | GET /items/{item-id}/getActivitiesByInterval
| [Create][]                     | POST /items
| [Delete][]                     | DELETE /items/{item-id}
| [Update][]                     | PATCH /items/{item-id}
| [Update column values][Update] | PATCH /items/{item-id}/fields

[Get]: ../api/listitem-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivity-getbyinterval.md
[Create]: ../api/listitem-create.md
[Delete]: ../api/listitem-delete.md
[Update]: ../api/listitem-update.md

## JSON representation

Here is a JSON representation of a **listItem** resource.

<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.listItem"
}-->

```json
{
  "contentType": { "@odata.type": "microsoft.graph.contentTypeInfo" },
  "fields": { "@odata.type": "microsoft.graph.fieldValueSet" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },

  /* relationships */
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "analytics": { "@odata.type": "microsoft.graph.itemAnalytics" },
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
  "parentReference": { "@odata.type": "microsoft.graph.itemReference"},
  "webUrl": "url"
}
```

## Properties

The **listItem** resource has the following properties.

| Property name | Type                | Description
|:--------------|:--------------------|:-------------------------------
| contentType   | [contentTypeInfo][] | The content type of this list item

The following properties are inherited from **[baseItem][]**.

| Property name        | Type              | Description
|:---------------------|:------------------|:----------------------------------
| id                   | string            | The unique identifier of the item. Read-only.
| name                 | string            | The name / title of the item.
| createdBy            | [identitySet][]   | Identity of the creator of this item. Read-only.
| createdDateTime      | DateTimeOffset    | The date and time the item was created. Read-only.
| description          | string            | The descriptive text for the item.
| eTag                 | string            | ETag for the item. Read-only.                                                          |
| lastModifiedBy       | [identitySet][]   | Identity of the last modifier of this item. Read-only.
| lastModifiedDateTime | DateTimeOffset    | The date and time the item was last modified. Read-only.
| parentReference      | [itemReference][] | Parent information, if the item has a parent. Read-write.
| sharepointIds        | [sharepointIds][] | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| webUrl               | string (url)      | URL that displays the item in the browser. Read-only.

## Relationships

 The **listItem** resource has the following relationships to other resources.

| Relationship name | Type                           | Description
|:------------------|:-------------------------------|:-------------------------------
| activities        | [itemActivity][] collection    | The list of recent activities that took place on this item.
| analytics         | [itemAnalytics][] resource     | Analytics about the view activities that took place on this item.
| driveItem         | [driveItem][]                  | For document libraries, the **driveItem** relationship exposes the listItem as a **[driveItem][]**
| fields            | [fieldValueSet][]              | The values of the columns set on this list item.
| versions          | [listItemVersion][] collection | The list of previous versions of the list item.

[baseItem]: baseitem.md
[contentTypeInfo]: contenttypeinfo.md
[driveItem]: driveitem.md
[fieldValueSet]: fieldvalueset.md
[identitySet]: identityset.md
[itemActivity]: itemactivity.md
[itemAnalytics]: itemanalytics.md
[itemReference]: itemreference.md
[list]: list.md
[listItemVersion]: listitemversion.md
[sharepointIds]: sharepointids.md

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ListItem",
  "tocBookmarks": {
    "ListItem": "#"
  },
  "suppressions": []
}
-->


