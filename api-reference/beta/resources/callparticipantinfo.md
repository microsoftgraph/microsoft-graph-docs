---
title: "callParticipantInfo resource type"
description: "Represents the details for a call participant."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callParticipantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details for a call participant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|participant|[identitySet](../resources/identityset.md)|Identity of the call participant.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callParticipantInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callParticipantInfo",
  "participant": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

