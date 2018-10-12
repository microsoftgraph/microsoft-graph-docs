# pivotTable resource type

Represents an Excel PivotTable.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookPivotTable](../api/workbookpivottable_get.md) | [workbookPivotTable](workbookpivottable.md) |Read properties and relationships of workbookPivotTable object.|
|[Refresh](../api/workbookpivottable_refresh.md)|None|Refreshes the PivotTable.	|
|[Refreshall](../api/workbookpivottable_refreshall.md)|None|Refresh all tables within given worksheet. Note that this action is available only on the pivot table collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Id of the PivotTable.	Read-only.|
|name|String|Name of the PivotTable.	|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[WorkbookWorksheet](worksheet.md)| The worksheet containing the current PivotTable. Read-only.	|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookPivotTable"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String"
}

```
