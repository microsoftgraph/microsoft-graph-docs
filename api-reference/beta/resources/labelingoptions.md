---
title: "labelingOptions resource type"
description: "Represents the labeling options that can be provided to the evaluation APIs."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# labelingOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the labeling options that can be provided to the evaluation APIs. **labelingOptions** must be passed in to the [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md) API to specify details about the label that is to be applied. 

## Properties

| Property               | Type                                                | Description                                                                                                                   |
| :--------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| assignmentMethod       | String                                              | Possible values are: `standard`, `privileged`, `auto`.                                                                        |
| downgradeJustification | [downgradeJustification](downgradejustification.md) | The downgrade justification object that indicates if downgrade was justified and, if so, the reason.                          |
| extendedProperties     | [keyValuePair](keyvaluepair.md) collection          | Extended properties will be parsed and returned in the standard MIP labeled metadata format as part of the label information. |
| labelId                | Guid                                                | The GUID of the label that should be applied to the information.                                                              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.labelingOptions",
  "baseType": null
}-->

```json
{
  "assignmentMethod": "String",
  "downgradeJustification": {"@odata.type": "microsoft.graph.downgradeJustification"},
  "extendedProperties": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "labelId": "Guid"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "labelingOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

