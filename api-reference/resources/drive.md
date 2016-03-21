# drive resource type

The **drive** resource represents a OneDrive or a Document Library in SharePoint.

It provides information about the owner of the drive, total and available
storage space, and exposes a collection of all the items contained within the drive.



### Methods

| Method   | Return Type | Description |
|:-----------------------------------------------|:---------------------------|:-----------------------------------------------------------|
| [Get drive](../api/drive_get.md)               | [drive](drive.md)          | Read properties of drive resource.         |
| [List items](../api/item_list_children.md)       | [driveitem](driveitem.md) collection | Get a item object collection. |


### Properties

| Property  | Type                          | Description                                                                                          |
|:----------|:------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| driveType | String                        | Describes the type of drive represented by this resource. OneDrive personal drives will return `personal`. OneDrive for Business will return `business`. |
| id        | String                        | The unique identifier of the drive. Read-only.                                                                                                           |
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
  "optionalProperties": [
    "items",
    "root",
    "special"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "driveType": "string",
  "id": "string (identifier)",
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
  "tocPath": ""
}-->
