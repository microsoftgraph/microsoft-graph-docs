# file resource type

The **file** resource groups file-related data items into a single structure.


### Properties
| Property | Type                          | Description                                                                                                                                 |
|:--------------|:------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------|
| hashes    | [HashesType](hashes.md) | Hashes of the file's binary content, if available.                                                                                          |
| mimeType  | string                        | The MIME type for the file. This is determined by logic on the server and might not be the value provided when the file was uploaded. |


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.file"
}-->

```json
{
  "hashes": {"@odata.type": "microsoft.graph.hashes"},
  "mimeType": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "file resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
