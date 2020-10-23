---
author: daspek
ms.author: dspektor
ms.date: 09/12/2017
title: ColumnLink
localization_priority: Normal
description: "A columnLink on a contentType attaches a site columnDefinition to that content type."
ms.prod: ""
doc_type: resourcePageType
---
# ColumnLink resource type

Namespace: microsoft.graph

A **columnLink** on a [contentType][] attaches a site **columnDefinition** to that content type.

[contentType]: contenttype.md

## JSON representation

Here is a JSON representation of a **columnLink** resource.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.columnLink" } -->

```json
{
  "id": "string",
  "name": "string"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| **id**        | string | The unique identifier for the column.
| **name**      | string | The name of the column  in this content type.

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnLink"
} -->

