# Permission resource type

The **Permission** resource provides information about a permission granted for a [DriveItem](driveitem.md) resource.

Permissions have a number of different forms.
The **Permission** resource represents these different forms through facets on the resource.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "link", "grantedTo", "invitation", "inheritedFrom", "shareId" ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permission"
}-->
```json
{
  "id": "string (identifier)",
  "grantedTo": {"@odata.type": "microsoft.graph.identitySet"},
  "inheritedFrom": {"@odata.type": "microsoft.graph.itemReference"},
  "invitation": {"@odata.type": "microsoft.graph.sharingInvitation"},
  "link": {"@odata.type": "microsoft.graph.sharingLink"},
  "roles": ["string"],
  "shareId": "string"
}
```

## Properties

| Property      | Type                                      | Description
|:--------------|:------------------------------------------|:-----------------
| id            | String                                    | The unique identifier of the permission among all permissions on the item. Read-only.
| grantedTo     | [IdentitySet](identityset.md)             | For user type permissions, the details of the users & applications for this permission. Read-only.
| invitation    | [SharingInvitation][]                     | Details of any associated sharing invitation for this permission. Read-only.
| inheritedFrom | [ItemReference](itemreference.md)         | Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Read-only.
| link          | [SharingLink][]                           | Provides the link details of the current permission, if it is a link type permissions. Read-only.
| role          | Collection of String                      | The type of permission, e.g. `read`. See below for the full list of roles. Read-only.
| shareId       | String                                    | A unique token that can be used to access this shared item via the [**shares** API](../api/shares_get.md). Read-only.

The permission resource uses _facets_ to provide information about the kind of permission represented by the resource.

Permissions with a [**link**][SharingLink] facet represent sharing links created on the item. 
Sharing links contain a unique token that provides access to the item for anyone with the link.

Permissions with an [**invitation**][SharingInvitation] facet represent permissions added by inviting specific users or groups to have access to the file.

[SharingInvitation]: sharinginvitation.md
[SharingLink]: sharinglink.md

## Roles enumeration

| Role        | Details                                                                        |
|:------------|:-------------------------------------------------------------------------------|
| `read`      | Provides the ability to read the metadata and contents of the item.            |
| `write`     | Provides the ability to read and modify the metadata and contents of the item. |
| `sp.owner`  | For SharePoint and OneDrive for Business this represents the owner role.       |
| `sp.member` | For SharePoint and OneDrive for Business this represents the member role.      |

## Methods

| Method                                              | REST Path
|:----------------------------------------------------|:-----------------------
| [List permissions](../api/driveitem_list_permissions.md) | `GET /drive/items/{item-id}/permissions`
| [Get permission](../api/permission_get.md)          | `GET /drive/items/{item-id}/permissions/{id}`
| [Add](../api/driveitem_invite.md)                        | `POST /drive/items/{item-id}/invite`
| [Update](../api/permission_update.md)               | `PATCH /drive/items/{item-id}/permissions/{id}`
| [Delete](../api/permission_delete.md)               | `DELETE /drive/items/{item-id}/permissions/{id}`


## Remarks

OneDrive for Business and SharePoint document libraries do not return the **inheritedFrom** property.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "permission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
