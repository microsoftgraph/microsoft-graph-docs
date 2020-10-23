---
author: JeremyKelley
ms.author: JeremyKelley
title: driveItem resource type
description: Item is the main data model in the OneDrive API. Everything is an item.
localization_priority: Priority
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# driveItem resource type

Namespace: microsoft.graph

The **driveItem** resource represents a file, folder, or other item stored in a drive.
All file system objects in OneDrive and SharePoint are returned as **driveItem** resources.

There are two primary ways of addressing a **driveItem** resource:

* By the **driveItem** unique identifier using `drive/items/{item-id}`
* By file system path using `/drive/root:/path/to/file`

**driveItem** resources have facets modeled as properties that provide data about the driveItem's identities and capabilities.
For example:

* Folders have a [**folder facet**][folder]
* Files have a [**file facet**][file].
* Images have an [**image facet**][image] in addition to their file facet.
* Images taken with a camera (photos) have a [**photo facet**][photo] that identifies the item as a photo and provides the properties of when the photo was taken and with what device.

Items with the **folder** facet act as containers of items and therefore have a `children` reference pointing to a collection of **driveItems** under the folder.

>**Note:** In OneDrive for Business or SharePoint document libraries, the **cTag** property is not returned, if the **driveItem** has a [folder][] facet.

## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:---------------------------------
| audio                | [audio][]          | Audio metadata, if the item is an audio file. Read-only.
| content              | Stream             | The content stream, if the item represents a file.
| createdBy            | [identitySet][]    | Identity of the user, device, and application which created the item. Read-only.
| createdDateTime      | DateTimeOffset     | Date and time of item creation. Read-only.
| cTag                 | String             | An eTag for the content of the item. This eTag is not changed if only the metadata is changed. **Note** This property is not returned if the item is a folder. Read-only.
| deleted              | [deleted][]        | Information about the deleted state of the item. Read-only.
| description          | String             | Provides a user-visible description of the item. Read-write. Only on OneDrive Personal
| eTag                 | String             | eTag for the entire item (metadata + content). Read-only.
| file                 | [file][]           | File metadata, if the item is a file. Read-only.
| fileSystemInfo       | [fileSystemInfo][] | File system information on client. Read-write.
| folder               | [folder][]         | Folder metadata, if the item is a folder. Read-only.
| id                   | String             | The unique identifier of the item within the Drive. Read-only.
| image                | [image][]          | Image metadata, if the item is an image. Read-only.
| lastModifiedBy       | [identitySet][]    | Identity of the user, device, and application which last modified the item. Read-only.
| lastModifiedDateTime | DateTimeOffset     | Date and time the item was last modified. Read-only.
| location             | [geoCoordinates][] | Location metadata, if the item has location data. Read-only.
| name                 | String             | The name of the item (filename and extension). Read-write.
| package              | [package][]        | If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
| parentReference      | [itemReference][]  | Parent information, if the item has a parent. Read-write.
| pendingOperations    | [pendingOperations][] | If present, indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
| photo                | [photo][]          | Photo metadata, if the item is a photo. Read-only.
| publication          | [publicationFacet][] | Provides information about the published or checked-out state of an item, in locations that support such actions. This property is not returned by default. Read-only. |
| remoteItem           | [remoteItem][]     | Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.
| root                 | [root][]           | If this property is non-null, it indicates that the driveItem is the top-most driveItem in the drive.
| searchResult         | [searchResult][]   | Search metadata, if the item is from a search result. Read-only.
| shared               | [shared][]         | Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.
| sharepointIds        | [sharepointIds][]  | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| size                 | Int64              | Size of the item in bytes. Read-only.
| specialFolder        | [specialFolder][]  | If the current item is also available as a special folder, this facet is returned. Read-only.
| video                | [video][]          | Video metadata, if the item is a video. Read-only.
| webDavUrl            | String             | WebDAV compatible URL for the item.
| webUrl               | String             | URL that displays the resource in the browser. Read-only.

**Note:** The eTag and cTag properties work differently on containers (folders).
The cTag value is modified when content or metadata of any descendant of the folder is changed.
The eTag value is only modified when the folder's properties are changed, except for properties that are derived from descendants (like **childCount** or **lastModifiedDateTime**).

## Relationships

| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| activities         | [itemActivity][] collection | The list of recent activities that took place on this item.
| analytics          | [itemAnalytics][] resource  | Analytics about the view activities that took place on this item.
| children           | driveItem collection        | Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.
| createdByUser      | [user][]                    | Identity of the user who created the item. Read-only.
| lastModifiedByUser | [user][]                    | Identity of the user who last modified the item. Read-only.
| listItem           | [listItem][]                | For drives in SharePoint, the associated document library list item. Read-only. Nullable.
| permissions        | [permission][] collection   | The set of permissions for the item. Read-only. Nullable.
| subscriptions      | [subscription][] collection | The set of subscriptions on the item. Only supported on the root of a drive.
| thumbnails         | [thumbnailSet][] collection | Collection containing [ThumbnailSet][] objects associated with the item. For more info, see [getting thumbnails][]. Read-only. Nullable.
| versions           | [driveItemVersion][] collection | The list of previous versions of the item. For more info, see [getting previous versions][]. Read-only. Nullable.
| workbook           | [workbook][]                | For files that are Excel spreadsheets, accesses the workbook API to work with the spreadsheet's contents. Nullable.

## Instance Attributes

Instance attributes are properties with special behaviors.
These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.conflictBehavior | string | The conflict resolution behavior for actions that create a new item. You can use the values *fail*, *replace*, or *rename*. The default for PUT is *replace*. An item will never be returned with this annotation. Write-only.
| @microsoft.graph.downloadUrl      | string | A URL that can be used to download this file's content. Authentication is not required with this URL. Read-only.
| @microsoft.graph.sourceUrl        | string | When issuing a PUT request, this instance annotation can be used to instruct the service to download the contents of the URL, and store it as the file. Write-only.

**Note:** The @microsoft.graph.downloadUrl value is a short-lived URL and can't be cached.
The URL will only be available for a short period of time (1 hour) before it is invalidated.
Removing file permissions for a user may not immediately invalidate the URL.

>**Note:** The parameter @microsoft.graph.conflictBehavior should be included in the URL instead of the body of the request.

## JSON representation

Here is a JSON representation of a **driveItem** resource.

The **driveItem** resource is derived from [**baseItem**][baseItem] and inherits properties from that resource.

<!-- { "blockType": "resource", "@type": "microsoft.graph.driveItem", "@type.aka": "oneDrive.item",
       "baseType": "microsoft.graph.baseItem",
       "optionalProperties": ["cTag", "children", "folder", "file", "image", "audio", "video",
       "location", "deleted", "specialFolder", "photo", "thumbnails", "searchResult", "remoteItem",
       "shared", "content", "@microsoft.graph.conflictBehavior", "@microsoft.graph.downloadUrl", "@content.sourceUrl",
       "sharepointIds"],
       "keyProperty": "id", "openType": true } -->

```json
{
  "audio": { "@odata.type": "microsoft.graph.audio" },
  "content": { "@odata.type": "Edm.Stream" },
  "cTag": "string (etag)",
  "deleted": { "@odata.type": "microsoft.graph.deleted"},
  "description": "string",
  "file": { "@odata.type": "microsoft.graph.file" },
  "fileSystemInfo": { "@odata.type": "microsoft.graph.fileSystemInfo" },
  "folder": { "@odata.type": "microsoft.graph.folder" },
  "image": { "@odata.type": "microsoft.graph.image" },
  "location": { "@odata.type": "microsoft.graph.geoCoordinates" },
  "package": { "@odata.type": "microsoft.graph.package" },
  "pendingOperations": { "@odata.type": "microsoft.graph.pendingOperations" },
  "photo": { "@odata.type": "microsoft.graph.photo" },
  "publication": {"@odata.type": "microsoft.graph.publicationFacet"},
  "remoteItem": { "@odata.type": "microsoft.graph.remoteItem" },
  "root": { "@odata.type": "microsoft.graph.root" },
  "searchResult": { "@odata.type": "microsoft.graph.searchResult" },
  "shared": { "@odata.type": "microsoft.graph.shared" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "size": 1024,
  "specialFolder": { "@odata.type": "microsoft.graph.specialFolder" },
  "video": { "@odata.type": "microsoft.graph.video" },
  "webDavUrl": "string",

  /* relationships */
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "analytics": {"@odata.type": "microsoft.graph.itemAnalytics"},
  "children": [{ "@odata.type": "microsoft.graph.driveItem" }],
  "createdByUser": { "@odata.type": "microsoft.graph.user" },
  "lastModifiedByUser": { "@odata.type": "microsoft.graph.user" },
  "permissions": [ {"@odata.type": "microsoft.graph.permission"} ],
  "subscriptions": [ {"@odata.type": "microsoft.graph.subscription"} ],
  "thumbnails": [ {"@odata.type": "microsoft.graph.thumbnailSet"}],
  "versions": [ {"@odata.type": "microsoft.graph.driveItemVersion"}],

  /* inherited from baseItem */
  "id": "string (identifier)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "eTag": "string",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "webUrl": "string",

  /* instance annotations */
  "@microsoft.graph.conflictBehavior": "string",
  "@microsoft.graph.downloadUrl": "url",
  "@microsoft.graph.sourceUrl": "url"
}
```

## Methods

| Method                                                   | Return Type | Description
|:---------------------------------------------------------|:------------|:------------
| [Get item](../api/driveitem-get.md)                      | driveItem |Retrieve the metadata for a DriveItem in a Drive.
| [Get analytics][]                                        | [itemAnalytics][] | Get analytics for this resource. 
| [Get activities by interval][]                           | [itemActivityStat][] | Get a collection of itemActivityStats within the specified time interval.
| [List children](../api/driveitem-list-children.md)       | collection of driveItem | Return a collection of DriveItems in the children relationship of a DriveItem.
| [List versions](../api/driveitem-list-versions.md)       | collection of [DriveItemVersion][] | Retrieves the versions of a file in the current user's drive.
| [Create item](../api/driveitem-post-children.md)         | driveItem | Creates a driveItem in the specified drive.
| [Update item](../api/driveitem-update.md)                | driveItem | Updates a driveItem in the drive.
| [Upload content](../api/driveitem-put-content.md)        | driveItem | Uploads content to the driveItem.
| [Download content](../api/driveitem-get-content.md)      | download Url | Downloads content of a driveItem.
| [Download specific file format][download-format]         | download Url | Downloads content of a driveItem with a specific format.
| [Delete item](../api/driveitem-delete.md)                | No Content | Deletes a driveItem.
| [Move item](../api/driveitem-move.md)                    | driveItem | Move a DriveItem to a new parent item.
| [Copy item](../api/driveitem-copy.md)                    | details about how to [monitor the progress](/graph/long-running-actions-overview) of the copy | Creates a copy of an driveItem (including any children).
| [Search items](../api/driveitem-search.md)               | collection of driveItem | Search the hierarchy of items for items matching a query.
| [List changes in a drive](../api/driveitem-delta.md)     | delta link | List any changes in the drive.
| [Follow Item](../api/driveitem-follow.md)                | driveItem  | Follow a driveItem.
| [Unfollow Item](../api/driveitem-unfollow.md)            | No content | Unfollow a driveItem.
| [List thumbnails](../api/driveitem-list-thumbnails.md)   | collection of driveItem | List driveItems with their thumbnails. 
| [Create sharing link](../api/driveitem-createlink.md)    | sharing link | Create a link to share the driveItem.
| [Add permissions](../api/driveitem-invite.md)            | collection of [permission][] | Sends a sharing ivite to a user.
| [List permissions](../api/driveitem-list-permissions.md) | collection of [permission][] | Retrieves the collection of permissions on an driveItem.
| [Delete permission](../api/permission-delete.md)         | No Content | Removes the permission from the driveItem.
| [Get WebSocket channel][getWebSocket]                    | [subscription][] | Receives near-real-time change notifications for a drive using socket.io.
| [Preview item][item-preview]                             | json object | Obtain short-lived embeddable URLs for an item in order to render a temporary preview.
| [Check in](../api/driveitem-checkin.md)                  | `POST /drives/{driveId}/items/{itemId}/checkin`
| [Check out](../api/driveitem-checkout.md)                | `POST /drives/{driveId}/items/{itemId}/checkout`

[item-preview]: ../api/driveitem-preview.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivitystat-getactivitybyinterval.md

[audio]: audio.md
[baseItem]: baseitem.md
[deleted]: deleted.md
[download-format]: ../api/driveitem-get-content-format.md
[driveItemVersion]: driveitemversion.md
[file]: file.md
[fileSystemInfo]: filesysteminfo.md
[folder]: folder.md
[getting previous versions]: ../api/driveitem-list-versions.md
[getting thumbnails]: ../api/driveitem-list-thumbnails.md
[getWebSocket]: ../api/subscriptions-socketio.md
[identitySet]: identityset.md
[image]: image.md
[itemActivity]: itemactivity.md
[itemAnalytics]: itemanalytics.md
[itemReference]: itemreference.md
[geoCoordinates]: geocoordinates.md
[listItem]: listitem.md
[package]: package.md
[permission]: permission.md
[pendingOperations]: pendingoperations.md
[photo]: photo.md
[remoteItem]: remoteitem.md
[root]: root.md
[searchResult]: searchresult.md
[shared]: shared.md
[sharepointIds]: sharepointids.md
[specialFolder]: specialfolder.md
[subscription]: subscription.md
[thumbnailSet]: thumbnailset.md
[video]: video.md
[workbook]: workbook.md
[user]: /graph/api/resources/users
[publicationFacet]: publicationfacet.md

[DriveItemVersion]: driveitemversion.md
[permission]: permission.md
[subscription]: subscription.md
[itemActivityStat]: itemactivitystat.md

<!-- {
  "type": "#page.annotation",
  "description": "Item is the main data model in the OneDrive API. Everything is an item.",
  "keywords": "item,facet,resource",
  "section": "documentation",
  "tocPath": "Items",
  "tocBookmarks": { "Resources/Item": "#" }
} -->