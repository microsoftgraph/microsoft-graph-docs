---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: NumberColumn
localization_priority: Normal
doc_type: resourcePageType
---
# NumberColumn resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **numberColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values are numbers.

## JSON representation

Here is a JSON representation of a **numberColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.numberColumn" } -->

```json
{
  "decimalPlaces": "automatic | none | one | two | three | four | five",
  "displayAs": "number | percentage",
  "maximum": 10.551,
  "minimum": 99.993
}
```

## Properties

| Property name      | Type   | Description
|:-------------------|:-------|:-----------------------------------------------
| **decimalPlaces**  | string | How many decimal places to display. See below for information about the possible values.
| **displayAs**      | string | How the value should be presented in the UX. Must be one of `number` or `percentage`. If unspecified, treated as `number`.
| **maximum**        | double | The maximum permitted value.
| **minimum**        | double | The minimum permitted value.

## DecimalPlaces values

| Value          | Description
|:---------------|:--------------------------------------------------------------
| **automatic**  | Default. Automatically display decimal places as needed.
| **none**       | Do not display any decimal places.
| **one**        | Always display one decimal place.
| **two**        | Always display two decimal places.
| **three**      | Always display three decimal places.
| **four**       | Always display four decimal places.
| **five**       | Always display five decimal places.

Note: **decimalPlaces** and **displayAs** apply to how numbers are rendered, not stored.
These properties may be updated.

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/NumberColumn",
  "suppressions": [
    "Error: /api-reference/beta/resources/numberColumn.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
