---
title: "signInFrequencySessionControl resource type"
description: "Session control to enforce signin frequency."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# signInFrequencySessionControl resource type

Session control to enforce signin frequency.

# Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `value` | Edm.Int32 | Numeric value corresponding to the given type. For example, 8 hours, 1 day. |
| `type` | signinFrequencyType | Defines the signin frequency type. Possible values: `Days`, `Hours` |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "value",
    "type"
  ],
  "@odata.type": "microsoft.graph.signinfrequencysessioncontrol"
}-->

```json
{
  "isEnabled": bool,
  "value": Integer,
  "type": { "@odata.type": "microsoft.graph.signinFrequencyType" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "signinfrequencysessioncontrol resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->