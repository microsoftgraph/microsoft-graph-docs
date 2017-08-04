# GeoCoordinates resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **GeoCoordinates** resource provides geographic coordinates and elevation of a location based on metadata contained within the file.
If a [**DriveItem**](driveitem.md) has a non-null **location** facet, the item represents a file with a known location assocaited with it.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.geoCoordinates"
}-->

```json
{
  "altitude": 1024.13,
  "latitude": 26.13246,
  "longitude": 24.34616
}
```

## Properties

| Property  | Type   | Description                                                    |
|:----------|:-------|:---------------------------------------------------------------|
| altitude  | Double | Optional. The altitude (height), in feet,  above sea level for the item. Read-only. |
| latitude  | Double | Optional. The latitude, in decimal, for the item. Read-only.   |
| longitude | Double | Optional. The longitude, in decimal, for the item. Read-only.  |


## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "geoCoordinates resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
