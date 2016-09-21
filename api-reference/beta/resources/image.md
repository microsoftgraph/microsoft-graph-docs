# Image resource type

The **Image** resource groups image-related properties into a single structure.
If a [**DriveItem**](driveitem.md) has a non-null **image** facet, the item represents a bitmap image.

**Note:** If the service is unable to determine the width and height of the image, the **Image** resource may be empty.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.image"
}-->

```json
{
  "height": 1024,
  "width": 1024
}
```

## Properties

| Property   | Type  | Description                                |
|:-----------|:------|:-------------------------------------------|
| **height** | Int32 | Optional. Height of the image, in pixels. Read-only. |
| **width**  | Int32 | Optional. Width of the image, in pixels. Read-only.  |


## Remarks

In OneDrive for Business, this resource is returned on items that are expected to be images based on file extension.
This resource returns no properties in OneDrive for Business.

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "image resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
