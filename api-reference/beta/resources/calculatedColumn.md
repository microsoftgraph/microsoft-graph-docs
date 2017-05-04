# CalculatedColumn resource type

The **calculatedColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's data is calculated based on other columns in the site.

## JSON representation

Here is a JSON representation of a **calculatedColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.calculatedColumn" } -->

```json
{
  "format": "boolean | currency | dateTime | number | text",
  "formula": "=[Column1]+[Column2]+[Column3]",
}
```

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| **format**     | string  | The output type used to format values in this column. Must be one of `boolean`, `currency`, `dateTime`, `number`, or `text`.
| **formula**    | string  | The formula used to compute the value for this column.

SharePoint formulas use a syntax similar to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/CalculatedColumn"
} -->
