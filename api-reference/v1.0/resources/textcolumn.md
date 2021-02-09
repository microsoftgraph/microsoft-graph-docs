---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/11/2017
title: TextColumn
localization_priority: Normal
description: "The textColumn on a columnDefinition resource indicates that the column's values are text."
ms.prod: ""
doc_type: resourcePageType
---

# TextColumn resource type

Namespace: microsoft.graph

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

| Property name                   | Type    | Description
|:--------------------------------|:--------|:---------------------------------
| **allowMultipleLines**          | boolean | Whether to allow multiple lines of text.
| **appendChangesToExistingText** | boolean | Whether updates to this column should replace existing text, or append to it.
| **linesForEditing**             | int32   | The size of the text box.
| **maxLength**                   | int32   | The maximum number of characters for the value.
| **textType**                    | string  | The type of text being stored. Must be one of `plain` or `richText`

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/textcolumn.md:
      Found potential enums in resource example that weren't defined in a table:(plain,richText) are in resource, but () are in table"
  ],
  "tocPath": "Resources/TextColumn"
} -->

