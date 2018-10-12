# directory resource type (deleted items)

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

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|deletedItems|[directoryObject](directoryobject.md) collection| Recently deleted items. Read-only. Nullable.|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.directory"
}-->

```json
{
}
```

## Example

<!--{"blockType": "request"}-->
```http
GET https://graph.microsoft.com/v1.0/directory
```

<!--{"blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.directory"}-->
```json
HTTP/1.1 200 OK
Content-Type: application/json

{
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