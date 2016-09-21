# Folder resource type

The **Folder** resource groups folder-related data on an item into a single structure. 
[**DriveItems**](driveitem.md) with a non-null **folder** facet are containers for other DriveItems.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.folder"
}-->

```json
{
  "childCount": 1024
}
```

## Properties

| Property       | Type  | Description                                                     |
|:---------------|:------|:----------------------------------------------------------------|
| **childCount** | Int64 | Number of children contained immediately within this container. |

## Remarks 

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "folder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
