---
title: "accessReviewRecurrenceSettings resource type"
description: ""
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsofit-identity-platform"
author: ""
---

# accessReviewRecurrenceSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


## Properties
|Property|Type|Description|
|:---|:---|:---|
| recurrenceType | string |  |
| recurrenceEndType | string |  |
| durationInDays | Int32 |  |
| recurrenceCount | Int32 |  |

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewRecurrenceSettings"
}-->
``` json
{
    "recurrenceType":"string",
    "recurrenceEndType":"string",
    "durationInDays":"Int32",
    "recurrenceCount":"Int32"
}
```



