---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: ChoiceColumn
---
# ChoiceColumn resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
  "tocPath": "Resources/ChoiceColumn"
} -->
