---
author: JeremyKelley
description: "The textColumn on a columnDefinition resource indicates that the column's values are text."
ms.date: 09/11/2017
title: TextColumn
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# TextColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **textColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values are text.

## JSON representation

Here is a JSON representation of a **textColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.textColumn" } -->

```json
{
  "allowMultipleLines": true,
  "appendChangesToExistingText": false,
  "linesForEditing": 6,
  "maxLength": 300,
  "textType": "plain | richText"
}
```

## Properties

| Property name                   | Type   | Description
|:--------------------------------|:-------|:-----------------------------------------------
| **allowMultipleLines**          | string | Whether to allow multiple lines of text.
| **appendChangesToExistingText** | string | Whether updates to this column should replace existing text, or append to it.
| **linesForEditing**             | int    | The size of the text box.
| **maxLength**                   | int    | The maximum number of characters for the value.
| **textType**                    | string | The type of text being stored. Must be one of `plain` or `richText`

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/TextColumn",
  "suppressions": []
}
-->


