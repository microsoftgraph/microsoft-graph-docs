---
title: "cloudAppSecuritySessionControl resource type"
description: "Session control used to enforce cloud app security checks."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# cloudAppSecuritySessionControl resource type

Session control used to enforce cloud app security checks.

# Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `type` | cloudAppSecuritySessionControlType | Type of check to be performed by the cloud app security service. Possible values: `McasConfigured`, `MonitorOnly`, `BlockDownloads`, `ProtectDownloads`. |

## JSON representation

The following is the JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "type",
  "@odata.type": "microsoft.graph.cloudappsecuritysessioncontrol"
}-->

```json
{
  "cloudAppSecurity": {
    "cloudAppSecurityType": { "@odata.type": "microsoft.graph.cloudAppSecuritySessionControlType" },
    "isEnabled": bool
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "cloudappsecuritysessioncontrol resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->