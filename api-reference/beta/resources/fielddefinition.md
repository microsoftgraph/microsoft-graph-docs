# FieldDefinition resource

## JSON representation

Here is a JSON representation of a Drive resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.fieldDefinition",
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

The **fieldDefinition** resource has the following properties.

| Property name    | Type         | Description
|:-----------------|:-------------|:-------------------------------------------
| **id**           | string       | The unique identifier for the fieldDefinition.
| **name**         | string       | The name of the field as it appears in the [columnSet][] structure.
| **defaultValue** | string       | The default value for the field
| **description**  | string       | The description of the field
| **type**         | string       | An enumerated value representing the field type. Can be `Integer`, `Text`, `DateTime`, `Lookup`, or another value. This corresponds to SharePoint's [SPFieldType][] enumeration.
| **hidden**       | boolean      | Indicates whether the field is visible in most SharePoint experiences.
| **indexed**      | boolean      | Indicates whether the field values can used for sorting and searching.
| **required**     | boolean      | Indicates whether the field value is not optional.
| **title**        | string       | The user-facing name of the field.
| **formulas**     | [formulas][] | An object containing formulas used for the field's value.

[columnSet]: fieldValueSet.md
[formulas]: formulas.md
[SPFieldType]: https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spfieldtype.aspx

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/FieldDefinition"
} -->
