---
title: "onlineMeetingInfo resource type"
description: "Details for an attendee to join the meeting online."
localization_priority: Normal
author: "ananmishr"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# onlineMeetingInfo resource type

Details for an attendee to join the meeting online.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|conferenceId|String| The ID of the conference.|
|joinUrl|String| The external link that launches the online meeting. This is a URL that clients will launch into a browser and will redirect the user to join the meeting.|
|phones|[phone](phone.md) collection| All of the phone numbers associated with this conference.|
|quickDial|String| The pre-formatted quickdial for this call.|
|tollFreeNumbers|String collection| The toll free numbers that can be used to join the conference.|
|tollNumber|String| The toll number that can be used to join the conference.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onlineMeetingInfo"
}-->

```json
{
  "conferenceId": "String",
  "joinUrl": "String",
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "quickDial": "String",
  "tollFreeNumbers": ["String"],
  "tollNumber": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onlineMeetingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

