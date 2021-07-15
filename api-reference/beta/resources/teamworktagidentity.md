---
title: "teamworkTagIdentity resource type"
description: "Represents a tag in Microsoft Teams."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTagIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a **tag** in Microsoft Teams. Tags allow users to quickly connect to subset of users in a team. For details about tag management in Microsoft Teams, see [Manage tags in Microsoft Teams](/microsoftteams/manage-tags).


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the tag.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the tag.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkTagIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagIdentity",
  "id": "String (identifier)",
  "displayName": "String"
}
```

