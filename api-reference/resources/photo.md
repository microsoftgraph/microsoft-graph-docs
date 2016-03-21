# photo resource type

The **photo** resource groups photo-related data on OneDrive, for example, EXIF metadata, into a single structure.

It is available on the photo property of item resources that represent photos.

### Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get photo](../api/photo_get.md) | [photo](photo.md) |Read properties and relationships of photo object.|
|[Update](../api/photo_update.md) | [photo](photo.md) |Update photo object. |
|[Delete](../api/photo_delete.md) | None |Delete photo object. |


### Notes
In OneDrive for Business, this resource is returned if it includes the **takenDateTime** property.

### Properties
| Property                | Type                      | Description                                                     |
|:------------------------|:--------------------------|:----------------------------------------------------------------|
| **takenDateTime**       | DateTimeOffset            | Represents the date and time the photo was taken.               |
| **cameraMake**          | String                    | Camera manufacturer.                                            |
| **cameraModel**         | String                    | Camera model.                                                   |
| **fNumber**             | Double                    | The F-stop value from the camera.                               |
| **exposureDenominator** | Int32                     | The denominator for the exposure time fraction from the camera. |
| **exposureNumerator**   | Int32                     | The numerator for the exposure time fraction from the camera.   |
| **focalLength**         | Double                    | The focal length from the camera.                               |
| **iso**                 | Int32                     | The ISO value from the camera.                                  |

### Relationships
None



### JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.photo"
}-->

```json
{
  "cameraMake": "string",
  "cameraModel": "string",
  "exposureDenominator": 1024,
  "exposureNumerator": 1024,
  "fNumber": 1024,
  "focalLength": 1024,
  "iso": 1024,
  "takenDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "photo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->