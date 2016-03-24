# driveItem resource type

The **driveItem** resource represents an item in a drive. All top-level file system objects
in OneDrive are returned as item resources. They can be accessed by their **id**
using the `/items/{item-id}` syntax, or by their file system path using the
`/drive/root:/path/to/file` syntax.

Items have facets modeled as properties that provide data about the item's
identities and capabilities. Folders have a [**folder** facet](folder.md)
and files have a [**file facet**](file.md). Images have an
[**image facet**](image.md) in addition to their file facet.

Items with the **folder** facet act as containers of items and therefore
have a `children` reference pointing to a collection of items under the folder.

### Methods

| Method                                                 | Return Type                                | Description                                                                                                                             |
|:-------------------------------------------------------|:-------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| [Get item](../api/item_get.md)                         | [driveitem](driveitem.md)                  | Read properties and relationships of item object.                                                                                       |
| [List children](../api/item_list_children.md)          | [driveitem](driveitem.md) collection       | Get a children object collection.                                                                                                       |
| [Create item](../api/item_post_children.md)            | [driveitem](driveitem.md)                  | Create a new item by posting to the children collection.                                                                                |
| [Update item](../api/item_update.md)                   | [driveitem](driveitem.md)                  | Update item object.                                                                                                                     |
| [Upload content](../api/item_uploadcontent.md)         | See API for details                        | The simple upload API allows you to provide the contents of a new file or update the contents of an existing file in a single API call. |
| [Download content](../api/item_downloadcontent.md)     | See API for details                        | Download the contents for an item.                                                                                                      |
| [Delete item](../api/item_delete.md)                   | None                                       | Delete item object.                                                                                                                     |
| [Move item](../api/item_move.md)                       | [driveitem](driveitem.md)                  | Update the parent folder for an item by ID or path. To move an item, you update its parentReference property.                           |
| [Copy item](../api/item_copy.md)                       | [driveitem](driveitem.md)                  | Create a copy of an item and its content with a new name or parent item.                                                                |
| [Search items](../api/item_search.md)                  | [driveitem](driveitem.md) collection       | Search for items matching a query.                                                                                                      |
| [Find changes](../api/item_delta.md)                   | [driveItem](driveitem.md) collection       | View changes for an item and its children.                                                                                              |
| [List thumbnails](../api/item_list_thumbnails.md)      | [thumbnailSet](thumbnailset.md) collection | Get a thumbnailSet object collection.                                                                                                   |
| [Create sharing link](../api/item_createlink.md)       | [permission](permission.md)                | Create a sharing link to share the file with other users.                                                                               |
| [Add permissions](../api/item_invite.md)               | [permission](permission.md)                | Create a new permission by sending a sharing invitation.                                                                                |
| [List permissions](../api/item_list_permissions.md)    | [permission](permission.md) collection     | Get a permission object collection.                                                                                                     |
| [Delete permission](../api/permission_delete.md) | None                                       | Remove a permission from an item.                                                                                                       |

### Properties

| Property             | Type                                | Description                                                                                                                                                               |
|:---------------------|:------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| audio                | [audio](audio.md)                   | Audio metadata, if the item is an audio file. Read-only.                                                                                                                  |
| content              | Stream                              | The content stream, if the item represents a file.                                                                                                                        |
| createdBy            | [identitySet](identityset.md)       | Identity of the user, device, and application which created the item. Read-only.                                                                                          |
| createdDateTime      | DateTimeOffset                      | Date and time of item creation. Read-only.                                                                                                                                |
| cTag                 | String                              | An eTag for the content of the item. This eTag is not changed if only the metadata is changed. **Note** This property is not returned if the item is a folder. Read-only. |
| deleted              | [deleted](deleted.md)               | Information about the deleted state of the item. Read-only.                                                                                                               |
| eTag                 | String                              | eTag for the entire item (metadata + content). Read-only.                                                                                                                 |
| file                 | [file](file.md)                     | File metadata, if the item is a file. Read-only.                                                                                                                          |
| fileSystemInfo       | [fileSystemInfo](filesysteminfo.md) | File system information on client. Read-write.                                                                                                                            |
| folder               | [folder](folder.md)                 | Folder metadata, if the item is a folder. Read-only.                                                                                                                      |
| id                   | String                              | The unique identifier of the item within the Drive. Read-only.                                                                                                            |
| image                | [image](image.md)                   | Image metadata, if the item is an image. Read-only.                                                                                                                       |
| lastModifiedBy       | [identitySet](identityset.md)       | Identity of the user, device, and application which last modified the item. Read-only.                                                                                    |
| lastModifiedDateTime | DateTimeOffset                      | Date and time the item was last modified. Read-only.                                                                                                                      |
| location             | [geoCoordinates](geoCoordinates.md) | Location metadata, if the item has location data. Read-only.                                                                                                              |
| name                 | String                              | The name of the item (filename and extension). Read-write.                                                                                                                |
| package              | [package](package.md)               | If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.         |
| parentReference      | [itemReference](itemreference.md)   | Parent information, if the item has a parent. Read-write.                                                                                                                 |
| photo                | [photo](photo.md)                   | Photo metadata, if the item is a photo. Read-only.                                                                                                                        |
| remoteItem           | [remoteItem](remoteitem.md)         | Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.                                                                        |
| searchResult         | [searchResult](searchresult.md)     | Search metadata, if the item is from a search result. Read-only.                                                                                                          |
| shared               | [shared](shared.md)                 | Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.                                               |
| size                 | Int64                               | Size of the item in bytes. Read-only.                                                                                                                                     |
| specialFolder        | [specialFolder](specialfolder.md)   | If the current item is also available as a special folder, this facet is returned. Read-only.                                                                             |
| video                | [video](video.md)                   | Video metadata, if the item is a video. Read-only.                                                                                                                        |
| webUrl               | String                              | URL that displays the resource in the browser. Read-only.                                                                                                                 |

                                                                                                                |

**Note:** The eTag and cTag properties work differently on containers (folders). The
cTag value is modified when content or metadata of any descendant of the folder
is changed. The eTag value is only modified when the folder's properties are
changed, except for properties that are derived from descendants (like
**childCount** or **lastModifiedDateTime**).

### Instance Attributes

Instance attributes are properties with special behaviors. This properties are
temporary and either a) define behavior the service should perform or b) provide
short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description                                                                                                                                                         |
|:----------------------------------|:-------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| @microsoft.graph.conflictBehavior | string | The conflict resolution behavior for actions that create a new item. An item will never be returned with this annotation. Write-only.                               |
| @microsoft.graph.downloadUrl      | string | A URL that can be used to download this file's content. Authentication is not required with this URL. Read-only.                                                    |
| @microsoft.graph.sourceUrl        | string | When issuing a PUT request, this instance annotation can be used to instruct the service to download the contents of the URL, and store it as the file. Write-only. |

**Note:** The @microsoft.graph.downloadUrl value is a short-lived URL and can't be
cached. The URL will only be available for a short period of time before it is
invalidated.

### Relationships

| Relationship       | Type                                       | Description                                                                                                                                                                       |
|:-------------------|:-------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| children           | [driveitem](driveitem.md) collection       | Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.                                        |
| createdByUser      | [user](user.md)                            | Identity of the user, device, and application which created the item. Read-only.                                                                                                  |
| lastModifiedByUser | [user](user.md)                            | Identity of the user, device, and application which last modified the item. Read-only.                                                                                            |
| permissions        | [permission](permission.md) collection     | The set of permissions for the item. Read-only. Nullable.                                                                                                                         |
| thumbnails         | [thumbnailSet](thumbnailset.md) collection | Collection containing [ThumbnailSet](thumbnailSet.md) objects associated with the item. For more info, see [getting thumbnails](../api/thumbnailset_get.md). Read-only. Nullable. |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "children", "createdByUser", "lastModifiedByUser", "permissions", "thumbnails"],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveItem"
}-->

```json
{
  "audio": {"@odata.type": "microsoft.graph.audio"},
  "cTag": "string",
  "content": "stream",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "deleted": {"@odata.type": "microsoft.graph.deleted"},
  "eTag": "string",
  "file": {"@odata.type": "microsoft.graph.file"},
  "fileSystemInfo": {"@odata.type": "microsoft.graph.fileSystemInfo"},
  "folder": {"@odata.type": "microsoft.graph.folder"},
  "id": "string (identifier)",
  "image": {"@odata.type": "microsoft.graph.image"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "location": {"@odata.type": "microsoft.graph.geoCoordinates"},
  "name": "string",
  "package": {"@odata.type": "microsoft.graph.package"},
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "photo": {"@odata.type": "microsoft.graph.photo"},
  "remoteItem": {"@odata.type": "microsoft.graph.remoteItem"},
  "searchResult": {"@odata.type": "microsoft.graph.searchResult"},
  "shared": {"@odata.type": "microsoft.graph.shared"},
  "size": 1024,
  "specialFolder": {"@odata.type": "microsoft.graph.specialFolder"},
  "video": {"@odata.type": "microsoft.graph.video"},
  "webDavUrl": "string",
  "webUrl": "string",

  "createdByUser": { "@odata.type": "microsoft.graph.user" },
  "lastModifiedByUser": { "@odata.type": "microsoft.graph.user" },
  "children": [ { "@odata.type": "microsoft.graph.driveItem" }],
  "thumbnails": [ {"@odata.type": "microsoft.graph.thumbnailSet"}],
  "permissions": [ {"@odata.type": "microsoft.graph.permission"} ]
}

```

## Remarks

In OneDrive for Business, the **cTag** property is not returned,
if the Item is a [folder](folder.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "item resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
