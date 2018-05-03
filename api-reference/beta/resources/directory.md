# directory resource type (deleted items)

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a deleted item in the directory. When an item is deleted, it is added to the deleted items "container". Deleted items will remain available to restore for up to 30 days. After 30 days, the items are permanently deleted.

Currently, deleted items functionality is only supported for Office 365 [groups](group.md) and [users](users.md).

## Methods

| Method         | Return Type | Description |
|:---------------|:------------|:------------|
|[Get deleted item](../api/directory_deleteditems_get.md) | [directoryObject](directoryobject.md) | Gets the properties of a deleted item. |
|[Restore deleted item](../api/directory_deleteditems_restore.md) |[directoryObject](directoryobject.md)| Restores a recently deleted item. |
|[List deleted items](../api/directory_deleteditems_list.md) |[directoryObject](directoryobject.md) collection| Gets a list of recently deleted items. |
|[Permanently delete an item](../api/directory_deleteditems_delete.md) | None | Permanently deletes an item. |
|[List deleted items owned by a user](../api/directory_deleteditems_user_owned.md) | [directoryObject](directoryobject.md) collection | Lists directory items owned by a user. |

## Properties
| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| A unique identifier for the object; for example, 12345678-9abc-def0-1234-56789abcde. Key. Not nullable. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|deleteditems|[directoryObject](directoryobject.md) collection| Recently deleted items. Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directory"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->