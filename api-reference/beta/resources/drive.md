# Drive resource type

The drive resource is the top level object representing a user's OneDrive or a document library in SharePoint.

OneDrive users will always have a tleast one drive available, their default drive.
Users without a OneDrive license may not have a default drive available.

## JSON representation

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

## Properties

| Property  | Type                          | Description                                                                                          |
|:----------|:------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| id        | String                        | The unique identifier of the drive. Read-only.                                                                                                           |
| driveType | String                        | Describes the type of drive represented by this resource. OneDrive personal drives will return `personal`. OneDrive for Business will return `business`. SharePoint document libraries will return `documentLibrary`. Read-only. |
| owner     | [identitySet](identityset.md) | Optional. The user account that owns the drive.                                                                                                                    |
| quota     | [quota](quota.md)             | Optional. Information about the drive's storage space quota.                                                                                                       |

## Relationships

| Relationship | Type |Description |
|:--------|:---------------------------|:-------------------------------------------------------------------------|
| items   | [driveitem](driveitem.md) collection | All items contained in the drive. Read-only. Nullable.                   |
| root    | [driveitem](driveitem.md)            | The root folder of the drive. Read-only.                                 |
| special | [driveitem](driveitem.md) collection | Collection of common folders available in OneDrive. Read-only. Nullable. |


## Methods

The following methods are available for drive resources.

| Method                                                    | REST Path                            | 
|:----------------------------------------------------------|:-------------------------------------|
| [Get user's default drive](../api/drive_get.md)           | `GET /me/drive`                      |
| [Get another user's drive](../api/drive_get.md)           | `GET /users/{user-id}/drive`         |
| [Get root folder for a drive](../api/item_get.md)         | `GET /drives/{drive-id}/root`        |
| [List items in a drive](../api/item_list_children.md)     | `GET /me/drive/root/children`        |
| [List changes in a drive](../api/item_delta.md)           | `GET /me/drive/root/delta`           |
| [Search items in a drive](../api/item_search.md)          | `GET /me/drive/search(q='text')      |




<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "drive resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Drive"
}-->
