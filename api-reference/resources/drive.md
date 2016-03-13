# drive resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get drive](../api/drive_get.md) | [drive](drive.md) |Read properties and relationships of drive object.|
|[Create driveItem](../api/drive_post_items.md) |[driveItem](driveitem.md)| Create a new driveItem by posting to the items collection.|
|[List items](../api/drive_list_items.md) |[driveItem](driveitem.md) collection| Get a driveItem object collection.|
|[Create driveItem](../api/drive_post_special.md) |[driveItem](driveitem.md)| Create a new driveItem by posting to the special collection.|
|[List special](../api/drive_list_special.md) |[driveItem](driveitem.md) collection| Get a driveItem object collection.|
|[Update](../api/drive_update.md) | [drive](drive.md)	|Update drive object. |
|[Delete](../api/drive_delete.md) | None |Delete drive object. |
|[Recent](../api/drive_recent.md)|[driveItem](driveitem.md) collection||
|[Sharedwithme](../api/drive_sharedwithme.md)|[driveItem](driveitem.md) collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|driveType|string||
|id|string| Read-only.|
|owner|[identitySet](identityset.md)||
|quota|[quota](quota.md)||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|items|[driveItem](driveitem.md) collection| Read-only. Nullable.|
|root|[driveItem](driveitem.md)| Read-only. Nullable.|
|special|[driveItem](driveitem.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "driveType": "string",
  "id": "string (identifier)",
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "quota": {"@odata.type": "microsoft.graph.quota"}
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