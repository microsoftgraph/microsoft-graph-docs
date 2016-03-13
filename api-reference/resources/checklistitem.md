# checklistItem resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isChecked|boolean||
|lastModifiedBy|string||
|lastModifiedDateTime|[dateTimeOffset](datetimeoffset.md)||
|orderHint|string||
|title|string||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.checklistitem"
}-->

```json
{
  "isChecked": true,
  "lastModifiedBy": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "orderHint": "string",
  "title": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "checklistItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->