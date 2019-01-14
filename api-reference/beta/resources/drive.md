---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Drive
localization_priority: Priority
ms.prod: "sharepoint"
---
# drive resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The drive resource is the top level object representing a user's OneDrive or a document library in SharePoint.

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
    "special",
    "system"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "id": "string",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "driveType": "personal | business | documentLibrary",
  "following": [ { "@odata.type": "microsoft.graph.driveItem" } ],
  "items": [ { "@odata.type": "microsoft.graph.driveItem" } ],
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "string (timestamp)",
  "name": "string",
  "owner": { "@odata.type": "microsoft.graph.identitySet" },
  "quota": { "@odata.type": "microsoft.graph.quota" },
  "root": { "@odata.type": "microsoft.graph.driveItem" },
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
| activities   | [itemActivity][] collection          | The list of recent activities that took place under this drive.
| items        | [driveitem](driveitem.md) collection | All items contained in the drive. Read-only. Nullable.
| root         | [driveitem](driveitem.md)            | The root folder of the drive. Read-only.
| special      | [driveitem](driveitem.md) collection | Collection of common folders available in OneDrive. Read-only. Nullable.
| following    | [DriveItem](driveitem.md) collection | The list of items the user is following. Only in OneDrive for Business.

## Methods

|                        Common task                         |         HTTP method         |
| :--------------------------------------------------------- | :-------------------------- |
| [Get Drive metadata of another Drive][drive-get]           | `GET /drives/{drive-id}`    |
| [Get root folder for user's default Drive][item-get]       | `GET /drive/root`           |
| [List activities under the Drive][drive-activities]        | `GET /drive/activities`     |
| [List followed Items][drive-following]                     | `GET /drive/following`      |
| [List children under the Drive][item-children]             | `GET /drive/root/children`  |
| [List changes for all Items in the Drive][item-changes]    | `GET /drive/root/delta`     |
| [Search for Items in the Drive][item-search]               | `GET /drive/root/search`    |
| [Access special folder](../api/drive-get-specialfolder.md) | `GET /drive/special/{name}` |

In the previous table, the examples use `/drive`, but other paths are valid too.

[itemActivity]: itemactivity.md
[item-resource]: driveitem.md
[identity-set]: identityset.md
[quota-facet]: quota.md
[drive-resource]: drive.md
[drive-activities]: ../api/activities-list.md
[drive-following]: ../api/drive-list-following.md
[drive-get]: ../api/drive-get.md
[item-get]: ../api/driveitem-get.md
[item-changes]: ../api/driveitem-delta.md
[item-search]: ../api/driveitem-search.md
[item-children]: ../api/driveitem-list-children.md


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
