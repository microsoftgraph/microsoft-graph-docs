# pivotTable resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
|worksheet|[worksheet](worksheet.md)| The worksheet containing the current PivotTable. Read-only.	|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
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
