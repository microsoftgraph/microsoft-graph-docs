# ListItem resource

This resource represents an item in a SharePoint **[list][]**.
Columns in the list are available through the `columnSet` dictionary.

## Tasks on a listItem

The following tasks are available for **listItem** resources.
All examples below are relative to a **[list][]**, eg: `https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}`.

| Common task                    | HTTP method
|:-------------------------------|:------------------------
| [Get][]                        | GET /items/{item-id}
| [Get column values][Get]       | GET /items/{item-id}?expand=columnSet
| [Create][]                     | POST /items
| [Delete][]                     | DELETE /items/{item-id}
| [Update][]                     | PATCH /items/{item-id}
| [Update column values][Update] | PATCH /items/{item-id}/columnSet

[Get]: ../api/listItem_get.md
[Create]: ../api/listItem_create.md
[Delete]: ../api/listItem_delete.md
[Update]: ../api/listItem_update.md

## JSON representation

Here is a JSON representation of a **listItem** resource.
Properties after the blank line are inherited from **[baseItem][]**.
<!-- { "blockType": "resource", 
       "@odata.type": "microsoft.graph.listItem",
       "keyProperty": "id" } -->

```json
{
  "listItemId": 1,
  "columnSet": { "@odata.type": "microsoft.graph.fieldValueSet" },

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

| Property name  | Type  | Description
|:---------------|:------|:-------------------------------
| **listItemId** | Int64 | An integer identifer for the list item within the [list][]

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

 The **listItem** resource has the following relationships to other resources.

| Relationship name | Type              | Description
|:------------------|:------------------|:-------------------------------------
| **columnSet**     | [fieldValueSet][] | A collection of child items if the current item is a container / folder.
| **driveItem**     | [driveItem][]     | For document libraries, the **driveItem** relationship exposes the listItem as a **[driveItem][]**

[baseItem]: baseItem.md
[driveItem]: driveItem.md
[fieldValueSet]: fieldValueSet.md
[identitySet]: identitySet.md
[list]: list.md

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
