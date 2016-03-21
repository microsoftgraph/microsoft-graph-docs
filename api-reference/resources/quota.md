# quota resource type

The **quota** resource provides details about drive quota.


### Properties
| Property  | Type   | Description                                                      |
|:----------|:-------|:-----------------------------------------------------------------|
| deleted   | Int64  | Total space consumed by files in the recycle bin, in bytes.      |
| remaining | Int64  | Total space remaining before reaching the quota limit, in bytes. |
| state     | String | Enumeration value that indicates the state of the storage space. Can be `normal`, `nearing`, `critical`, or `exceeded`.|
| total     | Int64  | Total allowed storage space, in bytes.                           |
| used      | Int64  | Total space used, in bytes.                                      |


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.quota"
}-->

```json
{
  "deleted": 1024,
  "remaining": 1024,
  "state": "string",
  "total": 1024,
  "used": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "quota resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->