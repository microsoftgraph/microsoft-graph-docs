# profilePhoto resource type
A profile photo of a user, group or an Outlook contact. It's binary data not encoded in base-64.

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get profilePhoto](../api/profilephoto_get.md) | [profilePhoto](profilephoto.md) |Read the photo and properties of **profilePhoto**. |
|[Update](../api/profilephoto_update.md) | [profilePhoto](profilephoto.md)  |Update the photo. |


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Read-only.|
|height|int32|The height of the photo. Read-only.|
|width|int32|The width of the photo. Read-only.|


### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profilePhoto"
}-->

```json
{
  "id": "240X240",
  "height": 240,
  "width": 240
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profilePhoto resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
