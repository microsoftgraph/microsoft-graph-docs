# workbook resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create binding](../api/workbook_post_bindings.md) |[binding](binding.md)| Create a new binding by posting to the bindings collection.|
|[List bindings](../api/workbook_list_bindings.md) |[binding](binding.md) collection| Get a binding object collection.|
|[Create namedItem](../api/workbook_post_names.md) |[namedItem](nameditem.md)| Create a new namedItem by posting to the names collection.|
|[List names](../api/workbook_list_names.md) |[namedItem](nameditem.md) collection| Get a namedItem object collection.|
|[Create table](../api/workbook_post_tables.md) |[table](table.md)| Create a new table by posting to the tables collection.|
|[List tables](../api/workbook_list_tables.md) |[table](table.md) collection| Get a table object collection.|
|[Create worksheet](../api/workbook_post_worksheets.md) |[worksheet](worksheet.md)| Create a new worksheet by posting to the worksheets collection.|
|[List worksheets](../api/workbook_list_worksheets.md) |[worksheet](worksheet.md) collection| Get a worksheet object collection.|
|[Delete](../api/workbook_delete.md) | None |Delete workbook object. |
|[Closesession](../api/workbook_closesession.md)|None||
|[Createsession](../api/workbook_createsession.md)|[sessionInfo](sessioninfo.md)||
|[Processquery](../api/workbook_processquery.md)|stream||

### Properties
None

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|application|[excelApplication](excelapplication.md)| Read-only. Nullable.|
|bindings|[binding](binding.md) collection| Read-only. Nullable.|
|functions|[functions](functions.md)| Read-only. Nullable.|
|names|[namedItem](nameditem.md) collection| Read-only. Nullable.|
|tables|[table](table.md) collection| Read-only. Nullable.|
|worksheets|[worksheet](worksheet.md) collection| Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->