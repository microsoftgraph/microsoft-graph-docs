# SharedDriveItem resource type

The **SharedDriveItem** resource is returned when using the [Shares](../api/shares_get.md) API to access a shared [DriveItem](driveitem.md).
This resource is similar to a [Drive](drive.md) resource but is scoped to only the DriveItems that can be accessed by the sharing link or shareId.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.sharedDriveItem"
}-->
```json
{
    "id": "string",
    "name": "string",
    "owner": { "@odata.type": "microsoft.graph.identitySet" },
    "items": [ { "@odata.type": "microsoft.graph.driveItem" }],
    "root": { "@odata.type": "microsoft.graph.driveItem" }
}
```

### Properties

| Property  | Type                                  | Description                                                          |
|:----------|:--------------------------------------|:---------------------------------------------------------------------|
| id        | String                                | The unique identifier for the share being accessed.                  |
| name      | String                                | The display name of the shared item.                                 |
| owner     | [IdentitySet](identityset.md)         | Information about the owner of the shared item being referenced.     |
| items     | Collection([DriveItem](driveitem.md)) | A collection of shared DriveItem resources. This collection cannot be enumerated, but items can be accessed by their unique ID. |
| root      | [DriveItem](driveitem.md)             | The top level shared DriveItem. If a single file is shared, this item is the file. If a folder is shared, this item will be the folder. You can use the item's facets to determine which case applies. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sharepointIds resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->