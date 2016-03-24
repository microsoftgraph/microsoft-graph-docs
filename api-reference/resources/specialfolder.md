# specialFolder resource type

The **SpecialFolder** facet provides information about how a folder can be
accessed via the [special folders collection](../api/drive_special.md).

Special folders provide simple aliases to access well-known folders in OneDrive
without the need to look up the folder by path (which would require
localization), or reference the folder with an ID. If a special folder is
renamed or moved to another location within the drive, this syntax will continue
to find that folder.

Special folders are automatically created the first time an application attempts
to write to one, if it doesn't already exist. If a user deletes one, it is
recreated when written to again.

**Note:** If your app has only requested **Files.Read** scope and requests a
special folder that doesn't exist, the response will be a `403 Forbidden` error.

### Properties
| Property  | Type   | Description                                                            |
|:----------|:-------|:-----------------------------------------------------------------------|
| name      | string | The unique identifier for this item in the `/drive/special` collection |

### JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.specialFolder"
}-->
```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "specialFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
