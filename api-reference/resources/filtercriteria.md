# FilterCriteria resource type

Represents the filtering criteria applied to a column.


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get FilterCriteria](../api/filtercriteria_get.md) | [FilterCriteria](filtercriteria.md) |Read properties and relationships of filterCriteria object.|
|[Update](../api/filtercriteria_update.md) | [FilterCriteria](filtercriteria.md)	|Update FilterCriteria object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|The HTML color string used to filter cells. Used with "cellColor" and "fontColor" filtering.|
|criterion1|string|The first criterion used to filter data. Used as an operator in the case of "custom" filtering.|
|criterion2|string|The second criterion used to filter data. Only used as an operator in the case of "custom" filtering.|
|dynamicCriteria|string|The dynamic criteria from the Excel.DynamicFilterCriteria set to apply on this column. Used with "dynamic" filtering. Possible values are: `Unknown`, `AboveAverage`, `AllDatesInPeriodApril`, `AllDatesInPeriodAugust`, `AllDatesInPeriodDecember`, `AllDatesInPeriodFebruray`, `AllDatesInPeriodJanuary`, `AllDatesInPeriodJuly`, `AllDatesInPeriodJune`, `AllDatesInPeriodMarch`, `AllDatesInPeriodMay`, `AllDatesInPeriodNovember`, `AllDatesInPeriodOctober`, `AllDatesInPeriodQuarter1`, `AllDatesInPeriodQuarter2`, `AllDatesInPeriodQuarter3`, `AllDatesInPeriodQuarter4`, `AllDatesInPeriodSeptember`, `BelowAverage`, `LastMonth`, `LastQuarter`, `LastWeek`, `LastYear`, `NextMonth`, `NextQuarter`, `NextWeek`, `NextYear`, `ThisMonth`, `ThisQuarter`, `ThisWeek`, `ThisYear`, `Today`, `Tomorrow`, `YearToDate`, `Yesterday`.|
|filterOn|string|The property used by the filter to determine whether the values should stay visible. Possible values are: `And`, `Or`.|
|values|object[]|The set of values to be used as part of "values" filtering.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|icon|[Icon](icon.md)|The icon used to filter cells. Used with "icon" filtering.|
|operator|FilterOperator|The operator used to combine criterion 1 and 2 when using "custom" filtering.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterCriteria"
}-->

```json
{
  "color": "string",
  "criterion1": "string",
  "criterion2": "string",
  "dynamicCriteria": "string",
  "filterOn": "string",
  "values": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "FilterCriteria resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->