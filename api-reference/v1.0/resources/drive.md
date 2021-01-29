---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/10/2017
title: Drive
localization_priority: Priority
ms.prod: "sharepoint"
description: "The drive resource is the top-level object representing a user's OneDrive or a document library in SharePoint."
doc_type: resourcePageType
---

# Drive resource type

Namespace: microsoft.graph

The drive resource is the top-level object representing a user's OneDrive or a document library in SharePoint.

OneDrive users will always have at least one drive available, their default drive.
Users without a OneDrive license may not have a default drive available.

## JSON representation

Here is a JSON representation of a Drive resource.

The **drive** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "activities",
    "createdBy",
    "createdDateTime",
    "description",
    "lastModifiedBy",
    "lastModifiedDateTime",
    "name",
    "webUrl",
    "items",
    "root",
    "sharepointIds",
    "special",
    "system"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "id": "string",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "driveType": "personal | business | documentLibrary",
  "following": [{"@odata.type": "microsoft.graph.driveItem"}],
  "items": [ { "@odata.type": "microsoft.graph.driveItem" } ],
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "string (timestamp)",
  "name": "string",
  "owner": { "@odata.type": "microsoft.graph.identitySet" },
  "quota": { "@odata.type": "microsoft.graph.quota" },
  "root": { "@odata.type": "microsoft.graph.driveItem" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "special": [ { "@odata.type": "microsoft.graph.driveItem" }],
  "system": { "@odata.type": "microsoft.graph.systemFacet" },
  "webUrl": "url"
}
```

## Properties

| Property             | Type                          | Description                                                                                                                                                                                                                      |
| :------------------- | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdBy            | [identitySet][]               | Identity of the user, device, or application which created the item. Read-only.                                                                                                                                                  |
| createdDateTime      | dateTimeOffset                | Date and time of item creation. Read-only.                                                                                                                                                                                       |
| description          | String                        | Provide a user-visible description of the drive. Read-write.
| driveType            | String                        | Describes the type of drive represented by this resource. OneDrive personal drives will return `personal`. OneDrive for Business will return `business`. SharePoint document libraries will return `documentLibrary`. Read-only. |
| id                   | String                        | The unique identifier of the drive. Read-only.                                                                                                                                                                                   |
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
[systemFacet]: systemfacet.md

## Relationships

| Relationship | Type                                 | Description
|:-------------|:-------------------------------------|:-----------------------
| following    | [DriveItem](driveitem.md) collection | The list of items the user is following. Only in OneDrive for Business.
| items        | [DriveItem](driveitem.md) collection | All items contained in the drive. Read-only. Nullable.
| root         | [DriveItem](driveitem.md)            | The root folder of the drive. Read-only.
| special      | [DriveItem](driveitem.md) collection | Collection of common folders available in OneDrive. Read-only. Nullable.
| list         | [List](list.md)                      | For drives in SharePoint, the underlying document library list. Read-only. Nullable.

## Methods

|                        Common task                         |         HTTP method         |
| :--------------------------------------------------------- | :-------------------------- |
| [Get Drive metadata of another Drive][drive-get]           | `GET /drives/{drive-id}`    |
| [Get root folder for user's default Drive][item-get]       | `GET /drive/root`           |
| [List children under the Drive][item-children]             | `GET /drive/root/children`  |
| [List changes for all Items in the Drive][item-changes]    | `GET /drive/root/delta`     |
| [List user's followed driveItems][drive-following]         | `Get /drive/following`       |
| [Search for Items in the Drive][item-search]               | `GET /drive/root/search`    |
| [Access special folder](../api/drive-get-specialfolder.md) | `GET /drive/special/{name}` |

In the previous table, the examples use `/drive`, but other paths are valid too.

[item-resource]: driveitem.md
[identity-set]: identityset.md
[quota-facet]: quota.md
[drive-resource]: drive.md
[drive-get]: ../api/drive-get.md
[item-get]: ../api/driveitem-get.md
[item-changes]: ../api/driveitem-delta.md
[item-search]: ../api/driveitem-search.md
[item-children]: ../api/driveitem-list-children.md
[drive-following]: ../api/drive-list-following.md


<!-- {
  "type": "#page.annotation",
  "description": "Drive is a top level object for OneDrive API that provides access to the contents of a drive. ",
  "keywords": "drive,objects,resources",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/drive.md:
      Found potential enums in resource example that weren't defined in a table:(personal,business,documentLibrary) are in resource, but () are in table"
  ],
  "tocPath": "Drives",
  "tocBookmarks": { "Resources/Drive": "#" }
} -->

