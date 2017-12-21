---
author: daspek
ms.author: dspektor
ms.date: 09/12/2017
title: DefaultColumnValue
---
# DefaultColumnValue resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **defaultColumnValue** on a [columnDefinition](columnDefinition.md) resource specifies the default value for this column.
The default value can either be specified directly or as a formula.

## JSON representation

Here is a JSON representation of a **defaultColumnValue** resource.
<!-- { "blockType": "resource", "@type": "microsoft.graph.defaultColumnValue" } -->

```json
{
  "formula": "=[Column1]+[Column2]+[Column3]",
  "value": "defaultValueString"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| **formula**   | string | The formula used to compute the default value for this column.
| **value**     | string | The direct value to use as the default value for this column.

Only one of **formula** or **value** may be specified at a time.

SharePoint formulas use a syntax similar to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3


<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/DefaultColumnValue"
} -->
