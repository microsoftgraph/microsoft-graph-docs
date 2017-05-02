# SharedDriveItem resource type

The **sharedDriveItem** resource is returned when using the [Shares](../api/shares_get.md) API to access a shared [driveItem](driveitem.md).

## JSON representation

Here is a JSON representation of the **sharedDriveItem** resource.

The **sharedDriveItem** resource is derrived from [**baseItem**](baseitem.md) and inherits properties from that resource.

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

    /* relationships*/
    "items": [ { "@odata.type": "microsoft.graph.driveItem" }],
    "root": { "@odata.type": "microsoft.graph.driveItem" },
    "driveItem": { "@odata.type": "microsoft.graph.driveItem" },
    "site": { "@odata.type": "microsoft.graph.site" }
}
```

## Properties

| Property | Type                          | Description                                                      |
| :------- | :---------------------------- | :--------------------------------------------------------------- |
| id       | String                        | The unique identifier for the share being accessed.              |
| name     | String                        | The display name of the shared item.                             |
| owner    | [IdentitySet](identityset.md) | Information about the owner of the shared item being referenced. |

## Relationships

| Relationship | Type                                  | Description                                                                                                                                                                                                |
| :----------- | :------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| items        | Collection([DriveItem](driveitem.md)) | A collection of shared **driveItem** resources. This collection cannot be enumerated, but items can be accessed by their unique ID.                                                                        |
| root         | [DriveItem](driveitem.md)             | The top level shared **driveItem**. If a single file is shared, this item is the file. If a folder is shared, this item will be the folder. You can use the item's facets to determine which case applies. |
| driveItem    | [driveItem](driveitem.md)             | A **driveItem** for the resource that was shared.  This is identical to the **root** property.                                                                                                             |
| site         | [site](site.md)                       | A **site** resource that contains the item that was shared.                                                                                                                                                |

## Methods

| Method                                  | REST Path                |
| :-------------------------------------- | :----------------------- |
| [Get shared item](../api/shares_get.md) | `GET /shares/{share-id}` |

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