---
title: "persistentBrowserSessionControl resource type"
description: "Session control to define whether to persist cookies or not."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# persistentBrowserSessionControl resource type

Session control to define whether to persist cookies or not.

# Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `mode` | persistentBrowserSessionMode | Type of persistent browser session mode. Possible values: `always` - Users remain signed in after closing and reopening browser window. Requires policy assignment to all cloud apps, `never` - Users are signed out after closing and reopening browser window. Requires policy assignment to all cloud apps. |

## JSON representation

The following is the JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "mode"
  ],
  "@odata.type": "microsoft.graph.persistentbrowsersessioncontrol"
}-->

```json
{
  "isEnabled": bool,
  "mode": { "@odata.type": "microsoft.graph.persistentBrowserSessionMode" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "persistentbrowsersessioncontrol resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->