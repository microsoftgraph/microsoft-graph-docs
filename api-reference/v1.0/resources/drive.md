---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
---
# Drive resource type

The drive resource is the top level object representing a user's OneDrive or a document library in SharePoint.

OneDrive users will always have at least one drive available, their default drive.
Users without a OneDrive license may not have a default drive available.

## JSON representation

Here is a JSON representation of a **drive** resource.

The **drive** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "items", "root", "special", "owner", "description", "system" ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "id": "string (identifier)",
  "driveType": "string",
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "quota": {"@odata.type": "microsoft.graph.quota"},
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "system": { "@odata.type": "microsoft.graph.systemFacet" },
  
  /* relationships */
  "root": {"@odata.type": "microsoft.graph.driveItem" },
  "items": [ {"@odata.type": "microsoft.graph.driveItem" }],
  "special": [ {"@odata.type": "microsoft.graph.driveItem" }],

  /* inherited from baseItem */
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "datetime",
  "description": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "datetime",
  "name": "string",
  "webUrl": "url"
}
```

## Properties

| Property             | Type                          | Description                                                                                                                                                                                                                      |
| :------------------- | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                   | String                        | The unique identifier of the drive. Read-only.                                                                                                                                                                                   |
| createdBy            | [identitySet][]               | Identity of the user, device, or application which created the item. Read-only.                                                                                                                                                  |
| createdDateTime      | dateTimeOffset                | Date and time of item creation. Read-only.                                                                                                                                                                                       |
| driveType            | String                        | Describes the type of drive represented by this resource. OneDrive personal drives will return `personal`. OneDrive for Business will return `business`. SharePoint document libraries will return `documentLibrary`. Read-only. |
| lastModifiedBy       | [identitySet][]               | Identity of the user, device, and application which last modified the item. Read-only.                                                                                                                                           |
| lastModifiedDateTime | dateTimeOffset                | Date and time the item was last modified. Read-only.                                                                                                                                                                             |
| name                 | string                        | The name of the item. Read-write.                                                                                                                                                                                                |
| owner                | [identitySet](identityset.md) | Optional. The user account that owns the drive. Read-only.                                                                                                                                                                       |
| quota                | [quota](quota.md)             | Optional. Information about the drive's storage space quota. Read-only.                                                                                                                                                          |
| sharepointIds        | [sharepointIds][]             | Returns identifiers useful for SharePoint REST compatibility. Read-only.                                                                                                                                                         |
| system               | [systemFacet][]               | If present, indicates that this is a system-managed drive. Read-only.
| webUrl               | string (url)                  | URL that displays the resource in the browser. Read-only.                                                                                                                                                                        |

[identitySet]: identityset.md
[sharepointIds]: sharepointids.md
[systemFacet]: systemFacet.md

## Relationships

| Relationship | Type                                 | Description                                                              |
| :----------- | :----------------------------------- | :----------------------------------------------------------------------- |
| items        | [driveitem](driveitem.md) collection | All items contained in the drive. Read-only. Nullable.                   |
| root         | [driveitem](driveitem.md)            | The root folder of the drive. Read-only.                                 |
| special      | [driveitem](driveitem.md) collection | Collection of common folders available in OneDrive. Read-only. Nullable. |

## Methods

The following methods are available for drive resources.

| Method                                                | REST Path                        |
| :---------------------------------------------------- | :------------------------------- |
| [Get user's default drive](../api/drive_get.md)       | `GET /me/drive`                  |
| [Get another user's drive](../api/drive_get.md)       | `GET /users/{user-id}/drive`     |
| [Get root folder for a drive](../api/driveitem_get.md)     | `GET /drives/{drive-id}/root`    |
| [List items in a drive](../api/driveitem_list_children.md) | `GET /me/drive/root/children`    |
| [List changes in a drive](../api/driveitem_delta.md)       | `GET /me/drive/root/delta`       |
| [Search items in a drive](../api/driveitem_search.md)      | `GET /me/drive/search(q='text')` |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Drive is a top level object for OneDrive API that provides access to the contents of a drive. ",
  "keywords": "drive,objects,resources",
  "section": "documentation",
  "tocPath": "Drives",
  "tocBookmarks": { "Resources/Drive": "#" }
} -->
