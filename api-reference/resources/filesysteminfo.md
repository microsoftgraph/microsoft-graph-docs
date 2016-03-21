# fileSystemInfo resource type

The **fileSystemInfo** resource contains properties that are reported by the
device's local file system for the local version of an item. This facet can be used to specify the last modified date or created date of the item as it was on the local device.


### Properties

| Property                 | Type                      | Description                                                   |
|:-------------------------|:--------------------------|:--------------------------------------------------------------|
| **createdDateTime**      | DateTimeOffset | The UTC date and time the file was created on a client.       |
| **lastModifiedDateTime** | DateTimeOffset | The UTC date and time the file was last modified on a client. |

### Notes
Values for createdDateTime and lastModifiedDateTime vary from the same
properties on the [driveitem](driveitem.md) resource. The values on the item
resource are the created and modified date and time as seen from the service.
The values stored in the **fileSystemInfo** facet are provided by the client.

For example, if a file was created on the device on on Monday, but not uploaded to the service until Tuesday, the client that uploads the file should write the `fileSystemInfo` facet to include the created date on Monday. When the item metadata is retrieved, the created date for the item will reflect Tuesday, but the `fileSystemInfo` facet will show the orignal created date on Monday.

These properties are read/write. If you are uploading a file and know the
local client values for these fields, you should include them in the request.

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileSystemInfo"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileSystemInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
