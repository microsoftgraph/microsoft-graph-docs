---
title: "connectionOperation resource type"
description: "Describes status of an asynchronous request to create a Microsoft Search connection schema."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# connectionOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes status of an asynchronous request to create a Microsoft Search connection [schema](schema.md).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get connectionOperation](../api/connectionoperation-get.md) | [connectionOperation](connectionoperation.md) | Read properties of a connectionOperation object. |

## Properties

| Property | Type                          | Description                       |
|:---------|:------------------------------|:----------------------------------|
| error    | [errorDetail](errordetail.md) | If `status` is `failed`, provides more information about the error that caused the failure. |
| id       | String                        | Unique identifier for the connectionOperation. Read-only. |
| status   | string                        | Indicates the status of the asynchronous operation. Possible values are: `unspecified`, `inprogress`, `completed`, `failed`. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connectionOperation",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "error": {"@odata.type": "microsoft.graph.errorDetail"},
  "id": "String (identifier)",
  "status": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connectionOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


