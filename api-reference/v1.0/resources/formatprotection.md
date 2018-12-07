# FormatProtection resource type

Represents the format protection of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get FormatProtection](../api/formatprotection_get.md) | [FormatProtection](formatprotection.md) |Read properties and relationships of formatProtection object.|
|[Update](../api/formatprotection_update.md) | [FormatProtection](formatprotection.md)	|Update FormatProtection object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|formulaHidden|boolean|Indicates if Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.|
|locked|boolean|Indicates if Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookFormatProtection"
}-->

```json
{
  "formulaHidden": true,
  "locked": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "FormatProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->