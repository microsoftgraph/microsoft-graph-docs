---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: ChoiceColumn
---
# ChoiceColumn resource type

The **choiceColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's values can be selected from a list of choices.

## JSON representation

Here is a JSON representation of a **choiceColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.choiceColumn" } -->

```json
{
  "allowTextEntry": true,
  "choices": ["red", "blue", "green"],
  "displayAs": "checkBoxes | dropDownMenu | radioButtons"
}
```

## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| **allowTextEntry** | boolean            | If true, allows custom values that aren't in the configured choices.
| **choices**        | collection(string) | The list of values available for this column.
| **displayAs**      | string             | How the choices are to be presented in the UX. Must be one of `checkBoxes`, `dropDownMenu`, or `radioButtons`


<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/choicecolumn.md:
      Found potential enums in resource example that weren't defined in a table:(checkBoxes,dropDownMenu,radioButtons) are in resource, but () are in table"
  ],
  "tocPath": "Resources/ChoiceColumn"
} -->
