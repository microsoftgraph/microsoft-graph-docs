---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: CalculatedColumn
---
# CalculatedColumn resource type

The **calculatedColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's data is calculated based on other columns in the site.

## JSON representation

Here is a JSON representation of a **calculatedColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.calculatedColumn" } -->

```json
{
  "format": "dateOnly | dateTime",
  "formula": "=[Column1]+[Column2]+[Column3]",
  "outputType": "boolean | currency | dateTime | number | text",
}
```

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| **format**     | string  | For `dateTime` output types, the format of the value. Must be one of `dateOnly` or `dateTime`.
| **formula**    | string  | The formula used to compute the value for this column.
| **outputType** | string  | The output type used to format values in this column. Must be one of `boolean`, `currency`, `dateTime`, `number`, or `text`.

SharePoint formulas use a syntax similar to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/calculatedcolumn.md:
      Found potential enums in resource example that weren't defined in a table:(dateOnly,dateTime) are in resource, but () are in table",
    "Warning: /api-reference/v1.0/resources/calculatedcolumn.md:
      Found potential enums in resource example that weren't defined in a table:(boolean,currency,dateTime,number,text) are in resource, but () are in table"
  ],
  "tocPath": "Resources/CalculatedColumn"
} -->
