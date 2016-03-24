# drive resource type

The drive resource is the top level object within a user's OneDrive.
A user will always have at least one Drive available--the default Drive.
The drive resource also represents a document library in a SharePoint site or
Office 365 group.

### Methods

The following methods are available for drive resources.


| Method                                                    | Return Type                          | Description                                             |
|:----------------------------------------------------------|:-------------------------------------|:--------------------------------------------------------|
| [Get user's default drive](../api/drive_get.md)           | [drive](drive.md)                    | Read properties of drive resource.                      |
| [Get another user's drive](../api/drive_get.md)           | [drive](drive.md)                    | Read properties of drive resource.                      |
| [Get root folder for a drive](../api/item_get.md)    | [driveItem](driveitem.md)            | Read properties of the root folder of the drive.        |
| [List items in a drive](../api/item_list_children.md)     | [driveItem](driveitem.md) collection | Get a item object collection.                           |
| [List changes in a drive](../api/item_delta.md)           | [driveItem](driveitem.md) collection | Track changes to items in a drive.                      |
| [Search items in a drive](../api/item_search.md)          | [driveItem](driveitem.md) collection | Search for items matching keywords in a drive.          |


### Properties

| Property  | Type                          | Description                                                                                          |
|:----------|:------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| id        | String                        | The unique identifier of the drive. Read-only.                                                                                                           |
| driveType | String                        | Describes the type of drive represented by this resource. OneDrive personal drives will return `personal`. OneDrive for Business will return `business`. Read-only. |
| owner     | [identitySet](identityset.md) | The user account that owns the drive.                                                                                                                    |
| quota     | [quota](quota.md)             | Information about the drive's storage space quota.                                                                                                       |

### Relationships

| Relationship | Type |Description |
|:--------|:---------------------------|:-------------------------------------------------------------------------|
| items   | [driveitem](driveitem.md) collection | All items contained in the drive. Read-only. Nullable.                   |
| root    | [driveitem](driveitem.md)            | The root folder of the drive. Read-only.                                 |
| special | [driveitem](driveitem.md) collection | Collection of common folders available in OneDrive. Read-only. Nullable. |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "items", "root", "special" ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "id": "string (identifier)",
  "driveType": "string",
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "quota": {"@odata.type": "microsoft.graph.quota"},
  "root": {"@odata.type": "microsoft.graph.driveItem" },
  "items": [ {"@odata.type": "microsoft.graph.driveItem" }],
  "special": [ {"@odata.type": "microsoft.graph.driveItem" }]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "drive resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Drive"
}-->
