---
title: "inferenceData resource type"
description: "inferenceData resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "profile"
doc_type: "resourcePageType"
---

# inferenceData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [inferenceData](inferencedata.md) resource type provides additional detail about an entity which has been created through inferring information about the user. This information will be present whenever the data within a particular entity was derived from a machine learning or other system process iterating over data.

## Properties

| Property              | Type        | Description                                                                     |
|:----------------------|:------------|:--------------------------------------------------------------------------------|
|confidenceScore        |Double       | Confidence score reflecting the accuracy of the data inferred about the user.   |
|userHasVerifiedAccuracy|Boolean      | Records if the user has confirmed this inference as being True or False.        |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inferenceData",
  "baseType": null
}-->

```json
{
  "confidenceScore": 1024,
  "userHasVerifiedAccuracy": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceData resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

