---
title: "meetingCapability resource type"
description: "Contains the capabilities of a meeting"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the capabilities of a meeting

## Properties

| Property                          | Type    | Description                                                        |
|:----------------------------------|:--------|:-------------------------------------------------------------------|
| allowAnonymousUsersToDialOut      | Boolean | Indicates whether anonymous users dialout is allowed in a meeting. |
| allowAnonymousUsersToStartMeeting | Boolean | Indicates whether anonymous users are allowed to start a meeting.  |
| autoAdmittedUsers                 | String  | Possible values are: `everyoneInCompany`, `everyone`.              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingCapability"
}-->
```json
{
  "allowAnonymousUsersToDialOut": true,
  "allowAnonymousUsersToStartMeeting": true,
  "autoAdmittedUsers": "everyoneInCompany | everyone"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingCapability resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


