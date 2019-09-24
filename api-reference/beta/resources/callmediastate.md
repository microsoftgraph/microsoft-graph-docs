---
title: "callMediaState resource type"
description: "Represents the media state for a call."
author: "VinodRavichandran"
ms.prod: microsoft-teams
localization_priority: Normal
doc_type: resourcePageType
---

# audioConferencing resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the media state for a call [call](call.md).

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| audio           | String  | The audio media state. Possible values are: `active`, `inactive`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callMediaState"
}-->
```json
{
  "audio": "active | inactive",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callMediaState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
