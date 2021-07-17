---
author: JeremyKelley
ms.date: 09/10/2017
title: Permission
localization_priority: Priority
description: "The Permission resource provides information about a sharing permission granted for a DriveItem resource."
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# Permission resource type

Namespace: microsoft.graph

The **Permission** resource provides information about a sharing permission granted for a [DriveItem](driveitem.md) resource.

Sharing permissions have a number of different forms.
The **permission** resource represents these different forms through _facets_.

Permissions with a [**link**][SharingLink] facet include sharing links created on the item.
These are the most common kinds of permissions.
Sharing links contain a unique token required to access the item.

Permissions with an [**invitation**][SharingInvitation] facet are added by inviting specific users or groups to  access the item.

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "link",
    "grantedTo",
    "grantedToIdentities",
    "invitation",
    "inheritedFrom",
    "shareId",
    "expirationDateTime",
    "hasPassword"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.permission"
}-->
```json
{
  "id": "string (identifier)",
  "grantedTo": {"@odata.type": "microsoft.graph.identitySet"},
  "grantedToIdentities": [{"@odata.type": "microsoft.graph.identitySet"}],
  "inheritedFrom": {"@odata.type": "microsoft.graph.itemReference"},
  "invitation": {"@odata.type": "microsoft.graph.sharingInvitation"},
  "link": {"@odata.type": "microsoft.graph.sharingLink"},
  "roles": ["string"],
  "shareId": "string",
  "expirationDateTime": "string (timestamp)",
  "hasPassword": "boolean"
}
```

## Properties

| Property      | Type                                      | Description
|:--------------|:------------------------------------------|:-----------------
| id            | String                                    | The unique identifier of the permission among all permissions on the item. Read-only.
| grantedTo     | [IdentitySet](identityset.md)             | For user type permissions, the details of the user and application for this permission. Read-only.
| grantedToIdentities | Collection([IdentitySet](identityset.md)) | For link type permissions, the details of the collection of users to whom permission was granted. Read-only.
| invitation    | [SharingInvitation][]                     | Details of any associated sharing invitation for this permission. Read-only.
| inheritedFrom | [ItemReference](itemreference.md)         | Provides a reference to the ancestor of the current permission, if it is inherited from an ancestor. Applicable to OneDrive Personal only. Read-only.
| link          | [SharingLink][]                           | Provides the link details of the current permission, if it is a link type permissions. Read-only.
| roles         | Collection of String                      | The type of permission, e.g. `read`. See below for the full list of roles. Read-only.
| shareId       | String                                    | A unique token that can be used to access this shared item via the [**shares** API](../api/shares-get.md). Read-only.
| expirationDateTime  | DateTimeOffset              | A format of yyyy-MM-ddTHH:mm:ssZ of DateTimeOffset indicates the expiration time of the permission. DateTime.MinValue indicates there is no expiration set for this permission. Optional.
| hasPassword         | Boolean                     | This indicates whether password is set for this permission, it's only showing in response. Applicable to OneDrive Personal only. Optional and read-only.

[SharingInvitation]: sharinginvitation.md
[SharingLink]: sharinglink.md

### Roles property values

| Value              | Description                                                                        |
|:------------------|:-------------------------------------------------------------------------------|
| read            | Provides the ability to read the metadata and contents of the item.            |
| write           | Provides the ability to read and modify the metadata and contents of the item. |
| owner           | For SharePoint and OneDrive for Business this represents the owner role.       |


## Methods

| Method                                                   | REST Path
|:---------------------------------------------------------|:-----------------------
| [List permissions](../api/driveitem-list-permissions.md) | `GET /drive/items/{item-id}/permissions`
| [Get permission](../api/permission-get.md)               | `GET /drive/items/{item-id}/permissions/{id}`
| [Update](../api/permission-update.md)                    | `PATCH /drive/items/{item-id}/permissions/{id}`
| [Delete](../api/permission-delete.md)                    | `DELETE /drive/items/{item-id}/permissions/{id}`
| [Share item with recipients][invite]                     | `POST /drive/items/{item-id}/invite`
| [Share item by link][createLink]                         | `POST /drive/items/{item-id}/createLink`
| [Add users to sharing link](../api/permission-grant.md)  | `POST /shares/{encoded-sharing-url}/permission/grant`

[createLink]: ../api/driveitem-createlink.md
[invite]: ../api/driveitem-invite.md

## Remarks

OneDrive for Business and SharePoint document libraries do not return the **inheritedFrom** property.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The permission object provides information about permissions and roles and sharing information.",
  "keywords": "sharing,permissions,read,write,acl",
  "section": "documentation",
  "tocPath": "Resources/Permission"
} -->

