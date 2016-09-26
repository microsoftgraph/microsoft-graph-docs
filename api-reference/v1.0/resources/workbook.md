# Workbook resource type

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[functions](https://support.office.com/en-us/article/Excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188)|Function result object |Invoke a workbook function using the syntax `POST /workbook/functions{function-name}` and provide the argument in the body using a JSON object. This returns the function result as a JSON object. The argument for each function can be found using the link.|

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|names|[NamedItem](nameditem.md) collection|Represents a collection of workbook scoped named items (named ranges and constants). Read-only.|
|tables|[Table](table.md) collection|Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[Worksheet](worksheet.md) collection|Represents a collection of worksheets associated with the workbook. Read-only.|


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Workbook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
