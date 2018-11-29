---
title: "notifications resource type"
description: "The following is a JSON representation of the resource."
---

# notifications resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Properties

| Property       | Type                                       | Description |
|:---------------|:-------------------------------------------|:------------|
| value          | [notification](commsnotification.md) collection | The notification of a change in the resource. |

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
<!-- {
  "type": "#page.annotation",
  "description": "notifications resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->