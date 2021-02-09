---
title: "applyLabelAction resource type"
description: "Represents a set of actions that should be taken to apply or update a label."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# applyLabelAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of actions that should be taken to apply or update a label. **applyLabelAction** is returned when the result of a label evaluation operation is that a label should be applied. The `actions` property contains an [informationProtectionAction](informationProtectionaction.md) collection that described the full set of actions to *apply* the label, including removal of old metadata, content marking, and protection.

## Properties

| Property                    | Type                                                                     | Description                                                                                                                                                                                       |
| :-------------------------- | :----------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| actionSource                | String                                                                   | Possible values are: `manual`, `automatic`, `recommended`, `default`.                                                                                                                             |
| actions                     | [informationProtectionAction](informationprotectionaction.md) collection | The collection of specific actions that should be taken by the consuming application to label the document. See  [informationProtectionAction](informationprotectionaction.md) for the full list. |
| label                       | [labelDetails](labeldetails.md)                                          | Object that describes the details of the label to apply.                                                                                                                                          |
| responsibleSensitiveTypeIds | Guid collection                                                          | If the label was the result of an automatic classification, supply the list of sensitive info type GUIDs that resulted in the returned label.                                         
## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applyLabelAction",
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
  "description": "applyLabelAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

