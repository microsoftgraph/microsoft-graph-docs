---
author: JeremyKelley
description: "The currencyColumn on a columnDefinition resource indicates that the column's values represent currency."
ms.date: 09/11/2017
title: CurrencyColumn
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# CurrencyColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **currencyColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values represent currency.

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

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/CurrencyColumn",
  "suppressions": []
}
-->


