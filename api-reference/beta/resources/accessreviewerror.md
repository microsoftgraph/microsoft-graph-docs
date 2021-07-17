---
title: "accessReviewError resource type"
description: "Represents an error that occurred within an access review instance lifecycle."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents an error that occurred in an access review instance lifecycle. This resource is read-only.

Inherits from [genericError](../resources/genericerror.md).

## Properties
| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| code  |String  | Represents the error type. Inherited from genericError. Read-only. |
| message |String | Represents the error details. Inherited from genericError. Read-only.|

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewError"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
