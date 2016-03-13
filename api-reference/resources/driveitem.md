# driveItem resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get driveItem](../api/driveitem_get.md) | [driveItem](driveitem.md) |Read properties and relationships of driveItem object.|
|[Create driveItem](../api/driveitem_post_children.md) |[driveItem](driveitem.md)| Create a new driveItem by posting to the children collection.|
|[List children](../api/driveitem_list_children.md) |[driveItem](driveitem.md) collection| Get a driveItem object collection.|
|[Create permission](../api/driveitem_post_permissions.md) |[permission](permission.md)| Create a new permission by posting to the permissions collection.|
|[List permissions](../api/driveitem_list_permissions.md) |[permission](permission.md) collection| Get a permission object collection.|
|[Create thumbnailSet](../api/driveitem_post_thumbnails.md) |[thumbnailSet](thumbnailset.md)| Create a new thumbnailSet by posting to the thumbnails collection.|
|[List thumbnails](../api/driveitem_list_thumbnails.md) |[thumbnailSet](thumbnailset.md) collection| Get a thumbnailSet object collection.|
|[Update](../api/driveitem_update.md) | [driveItem](driveitem.md)	|Update driveItem object. |
|[Delete](../api/driveitem_delete.md) | None |Delete driveItem object. |
|[Copy](../api/driveitem_copy.md)|[driveItem](driveitem.md)||
|[Createlink](../api/driveitem_createlink.md)|[permission](permission.md)||
|[Delta](../api/driveitem_delta.md)|[driveItem](driveitem.md) collection||
|[Delta](../api/driveitem_delta.md)|[driveItem](driveitem.md) collection||
|[Invite](../api/driveitem_invite.md)|[permission](permission.md) collection||
|[Search](../api/driveitem_search.md)|[driveItem](driveitem.md) collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|audio|[audio](audio.md)||
|cTag|string||
|content|stream||
|createdBy|[identitySet](identityset.md)||
|createdDateTime|[dateTimeOffset](datetimeoffset.md)||
|deleted|[deleted](deleted.md)||
|description|string||
|eTag|string||
|file|[file](file.md)||
|fileSystemInfo|[fileSystemInfo](filesysteminfo.md)||
|folder|[folder](folder.md)||
|id|string| Read-only.|
|image|[image](image.md)||
|lastModifiedBy|[identitySet](identityset.md)||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|location|[geoCoordinates](geocoordinates.md)||
|name|string||
|parentReference|[itemReference](itemreference.md)||
|photo|[photo](photo.md)||
|remoteItem|[remoteItem](remoteitem.md)||
|searchResult|[searchResult](searchresult.md)||
|shared|[shared](shared.md)||
|size|int64||
|specialFolder|[specialFolder](specialfolder.md)||
|video|[video](video.md)||
|webDavUrl|string||
|webUrl|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|children|[driveItem](driveitem.md) collection| Read-only. Nullable.|
|createdByUser|[user](user.md)| Read-only. Nullable.|
|lastModifiedByUser|[user](user.md)| Read-only. Nullable.|
|permissions|[permission](permission.md) collection| Read-only. Nullable.|
|thumbnails|[thumbnailSet](thumbnailset.md) collection| Read-only. Nullable.|
|workbook|[workbook](workbook.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.driveitem"
}-->

```json
{
  "audio": {"@odata.type": "microsoft.graph.audio"},
  "cTag": "string",
  "content": "stream",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "deleted": {"@odata.type": "microsoft.graph.deleted"},
  "description": "string",
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
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "photo": {"@odata.type": "microsoft.graph.photo"},
  "remoteItem": {"@odata.type": "microsoft.graph.remoteItem"},
  "searchResult": {"@odata.type": "microsoft.graph.searchResult"},
  "shared": {"@odata.type": "microsoft.graph.shared"},
  "size": 1024,
  "specialFolder": {"@odata.type": "microsoft.graph.specialFolder"},
  "video": {"@odata.type": "microsoft.graph.video"},
  "webDavUrl": "string",
  "webUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "driveItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->