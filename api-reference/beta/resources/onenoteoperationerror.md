---
title: "onenoteOperationError resource type"
description: "An error from a failed OneNote operation."
author: "jewan-microsoft"
localization_priority: Normal
ms.prod: "onenote"
doc_type: resourcePageType
---

# onenoteOperationError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An error from a failed OneNote operation.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenoteOperationError"
}-->

```json
{
  "code": "string",
  "message": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|string|The error code.|
|message|string|The error message.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onenoteOperationError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


