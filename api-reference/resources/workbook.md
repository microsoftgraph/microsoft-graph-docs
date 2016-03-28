# Workbook resource type

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List names](../api/workbook_list_names.md) |[NamedItem](nameditem.md) collection| Get a NamedItem object collection.|
|[Create Table](../api/workbook_post_tables.md) |[Table](table.md)| Create a new Table by posting to the tables collection.|
|[List tables](../api/workbook_list_tables.md) |[Table](table.md) collection| Get a Table object collection.|
|[List worksheets](../api/workbook_list_worksheets.md) |[Worksheet](worksheet.md) collection| Get a Worksheet object collection.|

### Properties
None

### Relationships
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