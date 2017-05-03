# ColumnDefinition resource

## JSON representation

Here is a JSON representation of a ColumnDefinition resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnDefinition",
       "keyProperty": "id", "optionalProperties": [ ] } -->

```json
{
  "id": "guid",
  "name": "staticName",
  "defaultValue": "defaultValue",
  "description": "description",
  "type": "Integer | Text | DateTime | Lookup | ...",
  "hidden": false,
  "indexed": true,
  "required": false,
  "title": "title",
  "formulas": {
    "@odata.type": "microsoft.graph.formulas",
    "default": "string",
    "validation": "string"
  }
}
```

## Properties

The **columnDefinition** resource has the following properties.

| Property name    | Type         | Description
|:-----------------|:-------------|:-------------------------------------------
| **id**           | string       | The unique identifier for the columnDefinition.
| **name**         | string       | The name of the column as it appears in the [columnSet][] structure.
| **defaultValue** | string       | The default value for the column
| **description**  | string       | The description of the column
| **type**         | string       | An enumerated value representing the column type. Can be `Integer`, `Text`, `DateTime`, `Lookup`, or another value. This corresponds to SharePoint's [SPFieldType][] enumeration.
| **hidden**       | boolean      | Indicates whether the column is visible in most SharePoint experiences.
| **indexed**      | boolean      | Indicates whether the column values can used for sorting and searching.
| **required**     | boolean      | Indicates whether the column value is not optional.
| **title**        | string       | The user-facing name of the column.
| **formulas**     | [formulas][] | An object containing formulas used for the column's value.

[columnSet]: fieldValueSet.md
[formulas]: formulas.md
[SPFieldType]: https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spfieldtype.aspx

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnDefinition"
} -->
