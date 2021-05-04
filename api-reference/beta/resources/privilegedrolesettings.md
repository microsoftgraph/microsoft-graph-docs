---
title: "privilegedRoleSettings resource type"
description: "Represents the settings for a privileged role."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# privilegedRoleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a privileged role.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get privilegedRoleSettings](../api/privilegedrolesettings-get.md) | [privilegedRoleSettings](privilegedrolesettings.md) |Read properties and relationships of privilegedRoleSettings object.|
|[Update privilegedRoleSettings](../api/privilegedrolesettings-update.md) | [privilegedRoleSettings](privilegedrolesettings.md) |Update privilegedRoleSettings object.|
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|elevationDuration|duration|The duration when the role is activated.|
|id|string| The unique identifier for the role settings. Read-only.|
|isMfaOnElevationConfigurable|boolean|`true` if **mfaOnElevation** is configurable. `false` if **mfaOnElevation** is not configurable.|
|lastGlobalAdmin|boolean|Internal used only.|
|maxElavationDuration|duration|Maximal duration for the activated role.|
|mfaOnElevation|boolean|`true` if MFA is required to activate the role. `false` if MFA is not required to activate the role.|
|minElevationDuration|duration|Minimal duration for the activated role.|
|notificationToUserOnElevation|boolean|`true` if send notification to the end user when the role is activated. `false` if do not send notification when the role is activated.|
|ticketingInfoOnElevation|boolean|`true` if the ticketing information is required when activate the role. `false` if the ticketing information is not required when activate the role.|
|approvalOnElevation|boolean|`true` if the approval is required when activate the role. `false` if the approval is not required when activate the role.|
|approverIds| string collection |List of Approval ids, if approval is required for activation.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privilegedRoleSettings"
}-->

```json
{
  "elevationDuration": "String (timestamp)",
  "id": "string (identifier)",
  "isMfaOnElevationConfigurable": true,
  "lastGlobalAdmin": true,
  "maxElavationDuration": "String (timestamp)",
  "mfaOnElevation": true,
  "minElevationDuration": "String (timestamp)",
  "notificationToUserOnElevation": true,
  "ticketingInfoOnElevation": true,
  "approvalOnElevation": false,
  "approverIds": ["string"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedRoleSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


