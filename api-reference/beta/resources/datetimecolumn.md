---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: DateTimeColumn
---
# DateTimeColumn resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **dateTimeColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's values are dates or times.

## JSON representation

Here is a JSON representation of a **dateTimeColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.dateTimeColumn" } -->

```json
{
  "displayAs": "default | friendly | standard",
  "format": "dateOnly | dateTime"
}
```

## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| **displayAs**      | string             | How the value should be presented in the UX. Must be one of `default`, `friendly`, or `standard`. See below for more details. If unspecified, treated as `default`.
| **format**         | string             | Indicates whether the value should be presented as a date only or a date and time. Must be one of `dateOnly` or `dateTime`

## DisplayAs values

| Value        | Description
|:-------------|:--------------------------------------------------------------
| **default**  | Uses the default rendering in the UX.
| **friendly** | Uses a friendly relative representation (eg. "today at 3:00 PM")
| **standard** | Uses the standard absolute representation (eg. "5/10/2017 3:20 PM")


<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/DateTimeColumn"
} -->
