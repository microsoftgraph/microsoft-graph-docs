---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: CurrencyColumn
---
# CurrencyColumn resource type

The **currencyColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's values represent currency.

## JSON representation

Here is a JSON representation of a **currencyColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.currencyColumn" } -->

```json
{
  "locale": "en-us"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| **locale**    | string | Specifies the locale from which to infer the currency symbol.

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/CurrencyColumn"
} -->
