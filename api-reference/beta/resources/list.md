---
author: JeremyKelley
description: "The list resource represents a list in a site."
ms.date: 09/11/2017
title: List
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# List resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **list** resource represents a list in a [site][].
This resource contains the top level properties of the list, including template and field definitions.

## Tasks on a list

The following tasks are available for list resources.
**Note:** This beta only allows navigating lists, not creating or updating them.
You can, however, create or update [list items][listItem].

All examples below are relative to a site, eg: `https://graph.microsoft.com/beta/sites/{site-id}`.

| Common task               | HTTP method
|:--------------------------|:------------------------------
| [Get list][]              | GET /lists/{list-id}
| [Create list][]           | POST /lists
| [Enumerate list items][]  | GET /lists/{list-id}/items
| [Update list item][]      | PATCH /lists/{list-id}/items/{item-id}
| [Delete list item][]      | DELETE /lists/{list-id}/items/{item-id}
| [Create list item][]      | POST /lists/{list-id}
| [Get recent activities][] | GET /lists/{list-id}/activities
| [Get WebSocket channel][] | GET /lists/{list-id}/subscriptions/socketIo

[Get list]: ../api/list-get.md
[Create list]: ../api/list-create.md
[Enumerate list items]: ../api/listitem-list.md
[Update list item]: ../api/listitem-update.md
[Delete list item]: ../api/listitem-delete.md
[Create list item]: ../api/listitem-create.md
[Get recent activities]: ../api/activities-list.md
[Get WebSocket channel]: ../api/subscriptions-socketio.md

## JSON representation

Here is a JSON representation of a **list** resource.

<!-- { "blockType": "resource", 
       "@odata.type": "microsoft.graph.list",
       "keyProperty": "id", 
       "optionalProperties": [ "items", "drive"] } -->

```json
{
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  "contentTypes": [ { "@odata.type": "microsoft.graph.contentType" }],
  "displayName": "title of list",
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "items": [ { "@odata.type": "microsoft.graph.listItem" } ],
  "list": {
    "@odata.type": "microsoft.graph.listInfo",
    "hidden": false,
    "template": "documentLibrary | genericList | survey | links | announcements | contacts ..."
  },
  "system": false,
  "subscriptions": [ {"@odata.type": "microsoft.graph.subscription"} ],

  /* inherited from baseItem */
  "id": "string",
  "name": "name of list",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "description": "description of list",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "webUrl": "url to visit the list in a browser"
}
```

## Properties

The **list** resource has the following properties.

| Property name    | Type                             | Description
|:-----------------|:---------------------------------|:---------------------------
| **columns**      | Collection([columnDefinition][]) | The collection of field definitions for this list.
| **contentTypes** | Collection([contentType][])      | The collection of content types present in this list.
| **displayName**  | string                           | The displayable title of the list.
| **list**         | [listInfo][]                     | Provides additional details about the list.
| **system**       | [systemFacet][]                  | If present, indicates that this is a system-managed list. Read-only.

The following properties are inherited from **[baseItem][]**.

| Property name            | Type             | Description
|:-------------------------|:-----------------|:-------------------------------
| **id**                   | string           | The unique identifier of the item. Read-only.
| **name**                 | string           | The name of the item.
| **createdBy**            | [identitySet][]  | Identity of the creator of this item. Read-only.
| **createdDateTime**      | DateTimeOffset   | The date and time the item was created. Read-only.
| **description**          | string           | The descriptive text for the item.
| **lastModifiedBy**       | [identitySet][]  | Identity of the last modifier of this item. Read-only.
| **lastModifiedDateTime** | DateTimeOffset   | The date and time the item was last modified. Read-only.
| **webUrl**               | string (url)     | URL that displays the item in the browser. Read-only.

## Relationships

The **list** resource has the following relationships to other resources.

| Relationship name | Type                        | Description
|:------------------|:----------------------------|:------------------------------
| **activities**    | [itemActivity][] collection | The recent activities that took place within this list.
| **drive**         | [drive][]                   | Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].
| **items**         | Collection([listItem][])    | All items contained in the list.
| subscriptions      | [subscription][] collection | The set of subscriptions on the list.

[baseItem]: baseitem.md
[contentType]: contenttype.md
[drive]: drive.md
[driveItem]: driveitem.md
[columnDefinition]: columndefinition.md
[identitySet]: identityset.md
[itemActivity]: itemactivity.md
[listInfo]: listinfo.md
[listItem]: listitem.md
[site]: site.md
[systemFacet]: systemfacet.md
[subscription]: subscription.md

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Lists",
  "tocBookmarks": {
    "Lists": "#"
  },
  "suppressions": []
}
-->


