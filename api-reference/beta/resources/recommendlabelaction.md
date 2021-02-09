---
title: "recommendLabelAction resource type"
description: "Represents a label that should be recommended to the user for application to the file based on sensitive information types."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# recommendLabelAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a label that should be recommended to the user for application to the file based on discovered sensitive information types. The [evaluateClassificationResults](../api/informationprotectionlabel-evaluateClassificationResults.md) may return a **recommendLabelAction** if the Microsoft Information Protection labeling policy is set to **recommend** and label rather than enforce a label. The user or appliation may choose to ignore or accept the recommendation. 

## Properties

| Property                    | Type                                                                     | Description                                                           |
| :-------------------------- | :----------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| actionSource                | String                                                                   | Possible values are: `manual`, `automatic`, `recommended`, `default`. |
| actions                     | [informationProtectionAction](informationprotectionaction.md) collection | Actions to take if the label is accepted by the user.                                                                       |
| label                       | [labelDetails](labeldetails.md)                                          | The label that is being recommended.                                                                      |
| responsibleSensitiveTypeIds | Guid collection                                                          | The sensitive information type GUIDs that caused the recommendation to be given.                                                                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recommendLabelAction",
  "baseType": "microsoft.graph.informationProtectionAction"
}-->

```json
{
  "actionSource": "String",
  "actions": [{"@odata.type": "microsoft.graph.informationProtectionAction"}],
  "label": {"@odata.type": "microsoft.graph.labelDetails"},
  "responsibleSensitiveTypeIds": ["Guid"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recommendLabelAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


