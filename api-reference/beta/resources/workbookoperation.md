---
title: "workbookOperation resource type"
description: "Represents the status of a long-running workbook operations."
localization_priority: Normal
author: "grangeryy"
ms.prod: "excel"
doc_type: "resourcePageType"
---

# workbookOperation resource type

Represents the status of a long-running workbook operation.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get workbookOperation](../api/workbookoperation-get.md) | [workbookOperation](workbookoperation.md) | Retrieve the status of a **workbookOperation** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| The operation id. Read-only.|
|status|String| The current status of the operation. Possible values are: `notStarted`, `running`, `succeeded`, `failed`.|
|error|[workbookOperationError](workbookoperationerror.md)| The error returned by the operation.|
|resourceLocation|String| The resource URI for the result.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookOperation",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "status": {"@odata.type": "microsoft.graph.workbookOperationStatus"},
  "error": {"@odata.type": "microsoft.graph.workbookOperationError"},
  "resourceLocation": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


