# remoteItem resource type

The **remoteItem** resource type indicates that a [driveItem](driveitem.md)
references an item that exist in another drive and provides a pointer to that drive.

It is available on the `remoteItem` property of [driveItem](driveitem.md)
resources that have been shared and added to a drive, for example, by using the
"Add to OneDrive" feature.

**Note:** Unlike with folders in the same drive, an item moved into a remote
item might have its `id` changed.


## Properties

| Property name   | Type                                           | Description                                                              |
|:----------------|:-----------------------------------------------|:-------------------------------------------------------------------------|
| file            | [File](file.md)                          | Indicates that the remote item is a file. Read-only.                     |
| fileSystemInfo  | [FileSystemInfo](filesysteminfo.md)      | Information about the remote item from the local file system. Read-only. |
| folder          | [Folder](folder.md)                      | Indicates that the remote item is a folder. Read-only.                   |
| id              | String                                         | Unique identifier for the remote item in its drive. Read-only.           |
| name            | String                                         | Optional. Filename of the remote item. Read-only.                        |
| parentReference | [ItemReference](itemreference.md) | Properties of the parent of the remote item. Read-only.                  |
| size            | Int64                                          | Size of the remote item. Read-only.                                      |


## JSON representation

<!-- { "blockType": "resource", "@odata.type": "oneDrive.remoteItem", optionalProperties: ["name", "fileSystemInfo", "file", "folder"] } -->
```json
{
  "id": "string",
  "file": { "@odata.type": "microsoft.graph.file" },
  "fileSystemInfo": { "@odata.type": "microsoft.graph.fileSystemInfo" },
  "folder": { "@odata.type": "microsoft.graph.folder" },
  "name": "string",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "size": 1024
}
```
<!-- {
  "type": "#page.annotation",
  "description": "remoteItem resource type provides a link to an item in another drive.",
  "keywords": "remoteitem symlink remote drive shared with me add to onedrive",
  "section": "documentation"
} -->
