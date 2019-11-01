---
title: "classificationResult resource type"
description: "Represents the result of a classification request."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# classificationResult resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a classification operation from the Microsoft Classification Engine. Data classification results from Azure Information Protection, Office, and other Microsoft services may return a [well-defined set of classification types](https://docs.microsoft.com/office365/securitycompliance/what-the-sensitive-information-types-look-for). These types can be provided to the [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) API to resolve a sensitive information to a Microsoft Information Protection label. 

## Properties

| Property        | Type  | Description                                                            |
| :-------------- | :---- | :--------------------------------------------------------------------- |
| confidenceLevel | Int32 | The confidence level, 0 to 100, of the result.                         |
| count           | Int32 | The number of instances of the specific information type in the input. |
| sensitiveTypeId | GUID  | The GUID of the discovered sensitive information type.                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.classificationResult",
  "baseType": null
}-->

```json
{
  "confidenceLevel": 1024,
  "count": 1024,
  "sensitiveTypeId": "Guid"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "classificationResult resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
