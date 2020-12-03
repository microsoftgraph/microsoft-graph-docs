---
title: "meetingInfo resource type"
description: "Meeting information specified to create or join a meeting."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract class that contains meeting specific information.
 
To join an existing meeting, you must either specify the [organizerMeetingInfo](organizermeetinginfo.md) 
in combination with the [chatInfo](./chatinfo.md), or just the
the [tokenMeetingInfo](tokenmeetinginfo.md).


## Derived types

| Type                                                 | Description                                                         |
|:-----------------------------------------------------|:--------------------------------------------------------------------|
| [organizerMeetingInfo](./organizermeetinginfo.md)    | Details about the organizer of the meeting                          |
| [tokenMeetingInfo](tokenmeetinginfo.md)              | An encrypted token that contains the information about the meeting  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingInfo"
}-->
```json
{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


