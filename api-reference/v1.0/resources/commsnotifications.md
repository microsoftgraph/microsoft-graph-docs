---
title: "commsNotifications resource type"
description: "List of notifications used by the Communications servers for sending multiple notifications in a single batch."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# commsNotifications resource type

Namespace: microsoft.graph

List of notifications used by the Communications servers for sending multiple notifications in a single batch.

## Properties

| Property       | Type                                                 | Description                                   |
|:---------------|:-----------------------------------------------------|:----------------------------------------------|
| value          | [commsNotification](commsnotification.md) collection | The notification of a change in the resource. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "value": [ { "@odata.type": "#microsoft.graph.commsNotification" } ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "commsNotifications resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

