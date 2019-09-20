---
title: "conditionalAccessConditions resource type"
description: "Represents the type of conditions that govern when the policy applies."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

# conditionalAccessConditions resource type

Represents the type of conditions that govern when the policy applies.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `signInRiskLevels` | riskLevel collection | Risk levels included in the policy scope. Possible values: `High`, `Medium`, `Low`, `None`. |
| `clientAppTypes` | conditionalAccessClientApps collection | Client application types included in the policy scope. Possible values: `Browser`, `Modern`, `EasSupported`, `EasUnsupported`, `Other`. |
| `applications` | [conditionalAccessApplications](conditionalaccessapplications.md) | Applications and ACRS tags included in and excluded from the policy scope. Required. |
| `users` | [conditionalAccessUsers](conditionalaccessusers.md) | Users, groups, and roles included in and excluded from the policy scope. Required. |
| `platforms` | conditionalAccessPlatforms | Platforms included in and excluded from the policy scope. Possible values: `All`, `Android`, `Ios`, `Windows`, `WindowsPhone`, `MacOs`. |
| `locations` | [conditionalAccessLocations](conditionalaccesslocations.md) | Locations included in and excluded from the policy scope. |
| `deviceStates` | [conditionalAccessDeviceStates](conditionalaccessdevicestates.md) | Device states in the policy scope. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "signInRiskLevels",
    "clientAppTypes",
    "applications",
    "users",
    "platforms",
    "locations",
    "deviceStates"
  ],
  "@odata.type": "microsoft.graph.conditionalaccessconditions"
}-->

```json
{
  "applications": { "@odata.type": "microsoft.graph.conditionalaccessapplications" },
  "users": { "@odata.type": "microsoft.graph.conditionalaccessusers" },
  "signInRiskLevels": [ "@odata.type": "microsoft.graph.risklevels" ],
  "platforms": { "@odata.type": "microsoft.graph.conditionalAccessPlatforms" },
  "locations": { "@odata.type": "microsoft.graph.conditionalaccesslocations" },
  "clientAppTypes": [ "@odata.type": "microsoft.graph.conditionalAccessClientApp" ],
  "deviceStates": { "@odata.type": "microsoft.graph.conditionalaccessdevicestates" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditionalaccessconditions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->