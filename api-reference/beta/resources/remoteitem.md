---
author: JeremyKelley
description: "The remoteItem resource indicates that a driveItem references an item that exists in another drive."
ms.date: 09/10/2017
title: RemoteItem
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---

# RemoteItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **remoteItem** resource indicates that a [**driveItem**](driveitem.md) references an item that exists in another drive.
This resource provides the unique IDs of the source drive and target item.

[**DriveItems**](driveitem.md) with a non-null **remoteItem** facet are resources that are shared, added to the user's OneDrive, or on items returned from hetrogenous collections of items (like search results).

**Note:** Unlike with folders in the same drive, a **driveItem** moved into a remote item may have its `id` value changed.

## JSON representation

<!-- { "blockType": "resource", 
       "@odata.type": "microsoft.graph.remoteItem", 
       "optionalProperties": ["name", "fileSystemInfo", "file", "folder"] } -->

```json
{
  "id": "string",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "file": { "@odata.type": "microsoft.graph.file" },
  "fileSystemInfo": { "@odata.type": "microsoft.graph.fileSystemInfo" },
  "folder": { "@odata.type": "microsoft.graph.folder" },
  "image" : { "@odata.type": "microsoft.graph.image" },
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "name": "string",
  "package": { "@odata.type": "microsoft.graph.package" },
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "shared": { "@odata.type": "microsoft.graph.shared" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "size": 1024,
  "video": { "@odata.type": "microsoft.graph.video" },
  "webDavUrl": "url",
  "webUrl": "url"
}
```

## Properties

| Property name        | Type                                | Description                                                                                                                                                       |
| :------------------- | :---------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdBy            | [IdentitySet](identityset.md)       | Identity of the user, device, and application which created the item. Read-only.                                                                                  |
| createdDateTime      | Timestamp                           | Date and time of item creation. Read-only.                                                                                                                        |
| file                 | [File](file.md)                     | Indicates that the remote item is a file. Read-only.                                                                                                              |
| fileSystemInfo       | [FileSystemInfo](filesysteminfo.md) | Information about the remote item from the local file system. Read-only.                                                                                          |
| folder               | [Folder](folder.md)                 | Indicates that the remote item is a folder. Read-only.                                                                                                            |
| id                   | String                              | Unique identifier for the remote item in its drive. Read-only.                                                                                                    |
| image                | [Image](image.md)                   | Image metadata, if the item is an image. Read-only.                                                                                               |
| lastModifiedBy       | [IdentitySet](identityset.md)       | Identity of the user, device, and application which last modified the item. Read-only.                                                                            |
| lastModifiedDateTime | Timestamp                           | Date and time the item was last modified. Read-only.                                                                                                              |
| name                 | String                              | Optional. Filename of the remote item. Read-only.                                                                                                                 |
| package              | [Package](package.md)               | If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only. |
| parentReference      | [ItemReference](itemreference.md)   | Properties of the parent of the remote item. Read-only.                                                                                                           |
| shared               | [shared](shared.md)                 | Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.                                       |
| sharepointIds        | [SharepointIds](sharepointids.md)   | Provides interop between items in OneDrive for Business and SharePoint with the full set of item identifiers. Read-only.                                          |
| size                 | Int64                               | Size of the remote item. Read-only.                                                                                                                               |
| video                | [Video](video.md)                   | Video metadata, if the item is a video. Read-only.                                                                                                    |
| webDavUrl            | Url                                 | DAV compatible URL for the item.                                                                                                                                  |
| webUrl               | Url                                 | URL that displays the resource in the browser. Read-only.                                                                                                         |

## Remarks

For more information about the facets on a **driveItem**, see [driveItem](driveitem.md).

<!--
{
  "type": "#page.annotation",
  "description": "The quota facet provides information about how much space the OneDrive has available.",
  "keywords": "quota,available,remaining,used",
  "section": "documentation",
  "tocPath": "Facets/RemoteItem",
  "suppressions": []
}
-->


