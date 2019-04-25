---
title: "tokenMeetingInfo resource type"
description: "The tokenMeetingInfo type."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# tokenMeetingInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The tokenMeetingInfo type.

## Properties

| Property                     | Type    | Description                                                                    |
| :--------------------------- | :------ | :----------------------------------------------------------------------------- |
| allowConversationWithoutHost | Boolean | Indicates if a conversation can continue once the host of the conversation leaves. |
| token                        | String  | The token to join/activate the meeting.                                        |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
   "baseType": "microsoft.graph.meetingInfo",
  "@odata.type": "microsoft.graph.tokenMeetingInfo"
}-->
```json
{
  "allowConversationWithoutHost": true,
  "token": "String"
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.tokenMeetingInfo"
}-->
```json
{
  "allowConversationWithoutHost": true,
  "token": "ABCD123"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "tokenMeetingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
