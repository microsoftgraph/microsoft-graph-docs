# List resource

The **list** resource represents a list in a [site][].
This resource contains the top level properties of the list, including template and field definitions.

## Tasks on a list

The following tasks are available for list resources.
All examples below are relative to a site, eg: `https://graph.microsoft.com/beta/sharepoint/sites/{site-id}`.

| Common task              | HTTP method
|:-------------------------|:------------------------------
| [Enumerate list items][] | GET /lists/{list-id}/items
| [Update list item][]     | PATCH /lists/{list-id}/items/{item-id}
| [Delete list item][]     | DELETE /lists/{list-id}/items/{item-id}
| [Create list item][]     | POST /lists/{list-id}

[Enumerate list items]: ../api/listItems_list.md
[Update list item]: ../api/listItem_update.md
[Delete list item]: ../api/listItem_delete.md
[Create list item]: ../api/listItem_create.md

## JSON representation

Here is a JSON representation of a **list** resource.
Properties after the blank line are inherited from **[baseItem][]**.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.list",
       "keyProperty": "id", "optionalProperties": [ "items", "drive"] } -->

```json
{
  "fields": [ { "@odata.type": "microsoft.graph.fieldDefinition" }],
  "list": {
    "@odata.type": "microsoft.graph.listInfo",
    "hidden": false,
    "template": "documentLibrary | generic | survey | links | announcements | contacts ..."
  },
  "items": [ { "@odata.type": "microsoft.graph.listItem" } ],
  "drive": { "@odata.type": "microsoft.graph.drive" },

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

| Property name | Type                            | Description
|:--------------|:--------------------------------|:---------------------------
| **fields**    | Collection([fieldDefinition][]) | The collection of field definitions for this list.
| **list**      | [listInfo][]                    | Provides additional details about the list.

The following properties are inherited from **[baseItem][]**.

| Property name            | Type             | Description
|:-------------------------|:-----------------|:-------------------------------
| **id**                   | string           | The unique identifier of the item. Read-only.
| **name**                 | string           | The name / title of the item.
| **createdBy**            | [identitySet][]  | Identity of the creator of this item. Read-only.
| **createdDateTime**      | DateTimeOffset   | The date and time the item was created. Read-only.
| **description**          | string           | The descriptive text for the item.
| **lastModifiedBy**       | [identitySet][]  | Identity of the last modifier of this item. Read-only.
| **lastModifiedDateTime** | DateTimeOffset   | The date and time the item was last modified. Read-only.
| **webUrl**               | string (url)     | URL that displays the item in the browser. Read-only.

## Relationships

The **list** resource has the following relationships to other resources.

| Relationship name | Type                     | Description
|:------------------|:-------------------------|:------------------------------
| **items**         | Collection([listItem][]) | All items contained in the list.
| **drive**         | [drive][]                | Only present on document libraries. Allows access to the list as a [drive][] resource with [driveItems][driveItem].

[baseItem]: baseItem.md
[drive]: drive.md
[driveItem]: driveItem.md
[fieldDefinition]: fieldDefinition.md
[identitySet]: identitySet.md
[listInfo]: listInfo.md
[listItem]: listItem.md
[site]: site.md

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
