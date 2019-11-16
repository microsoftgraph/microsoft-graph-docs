---
title: "outgoingCallOptions resource type"
description: "The outgoing call options for joining a group call."
author: "VinodRavichandran"
localization_priority: Priority
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# outgoingCallOptions resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

This contains the outgoing call options.

## Properties

| Property                     | Type                          | Description                                     |
| :--------------------------- | :---------------------------- | :-----------------------------------------------|
| allowGuestToBypassLobby      | boolean | This indicates whether the [Cloud Video Interop (CVI)](https://aka.ms/MicrosoftTeams/CloudVideoInterop) application allows a guest to bypass lobby or not.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.outgoingCallOptions"
}-->
```json
{
  "allowGuestToBypassLobby": "boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outgoingCallOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
