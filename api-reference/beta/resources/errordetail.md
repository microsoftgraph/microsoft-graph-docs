---
title: "errorDetail resource type"
description: "Describes an error for a failed request to create a Microsoft Search connection schema asynchronously."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# errorDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an error for a failed request to create a Microsoft Search connection [schema](schema.md) asynchronously.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property  | Type                                               | Description |
|:----------|:---------------------------------------------------|:------------|
| details   | [innerErrorDetail](innererrordetail.md) collection | A collection of inner errors, if any. Read-only, nullable. |
| errorCode | String                                             | The error code associated with the error, if any. Read-only, nullable. |
| message   | String                                             | The human-readable error message. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "details",
    "errorCode"
  ],
  "@odata.type": "microsoft.graph.errorDetail",
  "baseType": null
}-->

```json
{
  "details": [{"@odata.type": "microsoft.graph.innerErrorDetail"}],
  "errorCode": "String",
  "message": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "errorDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


