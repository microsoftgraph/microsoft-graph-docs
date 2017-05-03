# Formulas resource

The **formulas** resource contains formulas used in a [column][].

[column]: columnDefinition.md

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.formulas"
}-->

```json
{
  "default": "=[Column1]+[Column2]+[Column3]",
  "validation": "=[Column3]<500"
}
```

## Properties

| Property name  | Type    | Description                                                                                                                  |
|:---------------|:--------|:---------------------------------------------------
| **default**    | string  | The formula used to compute the default value for this column.
| **validation** | string  | The formula used to validate input for this column.

SharePoint formulas use a syntax similarl to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->