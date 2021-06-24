---
title: "audioConferencing resource type"
description: "Represents phone access information for an online meeting."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# audioConferencing resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents phone access information for an [onlineMeeting](onlinemeeting.md).

## Properties

| Property                    | Type              | Description                                                                    |
| :-------------------------- | :---------------- | :----------------------------------------------------------------------------- |
| dialinUrl                   | String            | A URL to the externally-accessible web page that contains dial-in information. |
| conferenceId                | String            | The conference id of the online meeting.                                       |
| tollFreeNumber (deprecated) | String            | The toll-free number that connects to the Audio Conference Provider.           |
| tollFreeNumbers             | String collection | List of toll-free numbers that are displayed in the meeting invite.            |
| tollNumber (deprecated)     | String            | The toll number that connects to the Audio Conference Provider.                |
| tollNumbers                 | String collection | List of toll numbers that are displayed in the meeting invite.                 |

> [!CAUTION]
>
>- The **tollFreeNumber** and **tollNumber** properties are deprecated. Use the **tollFreeNumbers** and **tollNumbers** properties instead.
>- For backward compatibility, the original **tollFreeNumber** is added to the new **tollFreeNumbers** collection and the original **tollNumber** is added to the new **tollNumbers** collection.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioConferencing"
}-->
```json
{
  "dialinUrl": "String",
  "conferenceId": "String",
  "tollFreeNumbers": ["String"],
  "tollNumbers": ["String"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "audioConferencing resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


