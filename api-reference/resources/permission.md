# permission resource type

Provides information about permissions granted for an item.

### Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
|[Get permission](../api/permission_get.md) | [permission](permission.md) |Read properties and relationships of permission object.|
|[Update](../api/permission_update.md) | [permission](permission.md)  |Update permission object. |
|[Delete](../api/permission_delete.md) | None |Delete permission object. |

### Properties
| Property      | Type                                             | Description                                                                                                        |
|:--------------|:-------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------|
| grantedTo     | [identitySet](identityset.md)                    | **Read Only** For user type permissions, the details of the users & applications for this permission.              |
| id            | String                                           | **Read Only** The unique identifier of the permission among all permissions on the item.                           |
| inheritedFrom | [itemReference](itemreference.md)                | **Read Only** Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. |
| invitation    | [sharingInvitation](sharinginvitation.md)        | **Read Only** Details of any associated sharing invitation for this permission.                                    |
| link          | [sharingLink](sharinglink.md)                    | **Read Only** Provides the link details of the current permission, if it is a link type permissions.               |
| role          | Array of strings                                 | The type of permission, e.g. `read`. See below for the full list of roles.                                         |

### Roles enumeration
| Role  | Details                                                                        |
|:------|:-------------------------------------------------------------------------------|
| read  | Provides the ability to read the metadata and contents of the item.            |
| write | Provides the ability to read and modify the metadata and contents of the item. |



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "link",
    "grantedTo",
    "invitation",
    "inheritedFrom"
  ],
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
