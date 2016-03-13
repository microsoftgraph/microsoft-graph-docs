# remoteItem resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|file|[file](file.md)||
|fileSystemInfo|[fileSystemInfo](filesysteminfo.md)||
|folder|[folder](folder.md)||
|id|string||
|name|string||
|parentReference|[itemReference](itemreference.md)||
|size|int64||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.remoteitem"
}-->

```json
{
  "file": {"@odata.type": "microsoft.graph.file"},
  "fileSystemInfo": {"@odata.type": "microsoft.graph.fileSystemInfo"},
  "folder": {"@odata.type": "microsoft.graph.folder"},
  "id": "string",
  "name": "string",
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "remoteItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->