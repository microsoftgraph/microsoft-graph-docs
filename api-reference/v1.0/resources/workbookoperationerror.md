---
title: "workbookOperationError resource type"
description: "Represents an error from a failed workbook operation."
localization_priority: Normal
author: "grangeryy"
ms.prod: "excel"
doc_type: "resourcePageType"
---

# workbookOperationError resource type

Represents an error from a failed workbook operation.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|code|String| The error code.|
|message|String| The error message.|
|innererror|error object| Optional. Additional error objects that may be more specific than the top level error.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookOperationError",
  "baseType": null
}-->

```json
{
  "code": "String",
  "message": "String",
  "innererror": { "@odata.type": "odata.error" }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookOperationError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

