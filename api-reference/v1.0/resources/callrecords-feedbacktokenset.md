---
title: "feedbackTokenSet resource type"
description: "The feedbackTokenSet type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# feedbackTokenSet resource type

Namespace: microsoft.graph.callRecords

This is an _open type_ that represents the set of feedback tokens provided by the user of this endpoint for the Session. This is a set of Boolean properties. The property names should not be relied upon since they may change depending on what tokens are offered to the user.

## Properties

Explicit property names will not be documented since the feedback token names can change, hence this is an [open type](/aspnet/web-api/overview/odata-support-in-aspnet-web-api/odata-v4/use-open-types-in-odata-v4).

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.feedbackTokenSet",
  "baseType": null
}-->

```json
{
  "DistortedSpeech": true,
  "ElectronicFeedback": false,
  "BackgroundNoise": true,
  "MuffledSpeech": true,
  "Echo": false
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "feedbackTokenSet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->