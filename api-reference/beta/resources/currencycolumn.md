---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: CurrencyColumn
localization_priority: Normal
doc_type: resourcePageType
---
# CurrencyColumn resource type

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
  "suppressions": [
    "Error: /api-reference/beta/resources/currencycolumn.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
