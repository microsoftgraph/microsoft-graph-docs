# permission resource type

Provides information about permissions granted for an item.

### Methods

| Method                                              | Return Type                            | Description                                             |
|:----------------------------------------------------|:---------------------------------------|:--------------------------------------------------------|
| [List permissions](../api/item_list_permissions.md) | [permission](permission.md) collection | List the permissions on an item.                        |
| [Get permission](../api/permission_get.md)          | [permission](permission.md)            | Read properties and relationships of permission object. |
| [Add](../api/item_invite.md)                        | [permission](permission.md)            | Add new permissions to an item.                         |
| [Update](../api/permission_update.md)               | [permission](permission.md)            | Update permission object.                               |
| [Delete](../api/permission_delete.md)               | None                                   | Delete permission object.                               |


### Properties

| Property      | Type                                      | Description                                                                                                                           |
|:--------------|:------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------|
| id            | String                                    | The unique identifier of the permission among all permissions on the item. Read-only.                                                 |
| grantedTo     | [identitySet](identityset.md)             | For user type permissions, the details of the users & applications for this permission. Read-only.                                    |
| invitation    | [sharingInvitation](sharinginvitation.md) | Details of any associated sharing invitation for this permission. Read-only.                                                          |
| inheritedFrom | [itemReference](itemreference.md)         | Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only.                       |
| link          | [sharingLink](sharinglink.md)             | Provides the link details of the current permission, if it is a link type permissions. Read-only.                                     |
| role          | Array of strings                          | The type of permission, e.g. `read`. See below for the full list of roles. Read-only.                                                 |
| shareId       | String                                    | A unique token for this permission. Read-only. |


### Roles enumeration

| Role  | Details                                                                        |
|:------|:-------------------------------------------------------------------------------|
| read  | Provides the ability to read the metadata and contents of the item.            |
| write | Provides the ability to read and modify the metadata and contents of the item. |

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "link", "grantedTo", "invitation", "inheritedFrom", "shareId" ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permission"
}-->

```json
{
  "grantedTo": {"@odata.type": "microsoft.graph.identitySet"},
  "id": "string (identifier)",
  "inheritedFrom": {"@odata.type": "microsoft.graph.itemReference"},
  "invitation": {"@odata.type": "microsoft.graph.sharingInvitation"},
  "link": {"@odata.type": "microsoft.graph.sharingLink"},
  "roles": ["string"],
  "shareId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "permission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
