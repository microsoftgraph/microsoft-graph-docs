---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/11/2017
title: NumberColumn
localization_priority: Normal
description: "The numberColumn on a columnDefinition resource indicates that the column's values are numbers."
ms.prod: ""
doc_type: resourcePageType
---

# NumberColumn resource type

Namespace: microsoft.graph

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

## DecimalPlaces

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

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/numbercolumn.md:
      Found potential enums in resource example that weren't defined in a table:(automatic,none,one,two,three,four,five) are in resource, but () are in table",
    "Warning: /api-reference/v1.0/resources/numbercolumn.md:
      Found potential enums in resource example that weren't defined in a table:(number,percentage) are in resource, but () are in table"
  ],
  "tocPath": "Resources/NumberColumn"
} -->

