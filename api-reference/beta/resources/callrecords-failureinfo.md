---
title: "failureInfo resource type"
description: "The failureInfo type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# failureInfo resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about why a call or portion of a call failed.

The failure can be of two types: 

- Call setup failure
- Mid-call drop

If one or more media streams have any of these failures, that failure is propagated at the segment level. If one or more segments have any of these failures, that failure is propagated at the session level.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|reason|String|Classification of why a call or portion of a call failed.|
|stage|microsoft.graph.callRecords.failureStage|The stage when the failure occurred. Possible values are: `unknown`, `callSetup`, `midcall`, `unknownFutureValue`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.failureInfo",
  "baseType": null
}-->

```json
{
  "reason": "String",
  "stage": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "failureInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


