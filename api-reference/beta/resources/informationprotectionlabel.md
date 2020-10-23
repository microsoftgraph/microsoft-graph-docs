---
title: "informationProtectionLabel resource type"
description: "Describes the information protection label that details how to properly apply a sensitivity label to information."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# informationProtectionLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the information protection label that details how to properly apply a sensitivity label to information. The **informationProtectionLabel** resource describes the configuration of sensitivity labels that apply to a user or tenant.  

## Methods

| Method                                                                                              | Return Type                                                               | Description                                                                                                                                                            |
| :-------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List informationProtectionLabel](../api/informationprotectionpolicy-list-labels.md)                | [informationProtectionLabel](informationprotectionlabel.md) collection | List all configured information protection labels for a user or tenant.                                                                                                |
| [Get informationProtectionLabel](../api/informationprotectionlabel-get.md)                          | [informationProtectionLabel](informationprotectionlabel.md)               | Given a specific label ID, return the **informationProtectionLabel**.                                                                                                  |
| [evaluateapplication](../api/informationprotectionlabel-evaluateapplication.md)                     | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [labelingOptions](labelingoptions.md), compute the set of actions require to apply the label.                      |
| [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and classification results, compute the set of actions require to apply the label.                                  |
| [evaluateRemoval](../api/informationprotectionlabel-evaluateremoval.md)                             | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [downgradeJustification](downgradejustification.md), compute the actions that should be taken to remove the label. |
| [extractLabel](../api/informationprotectionlabel-extractlabel.md)                                   | [informationProtectionContentLabel](informationprotectioncontentlabel.md) | Given an input of [contentInfo](contentinfo.md), return details on the [informationProtectionLabel](informationprotectionlabel.md) that the metadata represents.       |

## Properties

| Property    | Type    | Description                                                                                     |
| :---------- | :------ | :---------------------------------------------------------------------------------------------- |
| color       | String  | The color that the UI should display for the label, if configured.                              |
| description | String  | The admin-defined description for the label.                                                    |
| id          | String  | The label ID is a globally unique identifier (GUID)                                             |
| isActive    | Boolean | Indicates whether the label is active or not. Active labels should be hidden or disabled in UI. |
| name        | String  | The plaintext name of the label.                                                                |
| sensitivity | Int32   | The sensitivity value of the label, where lower is less sensitive.                              |
| tooltip     | String  | The tooltip that should be displayed for the label in a UI.                                     |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationProtectionLabel",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "color": "String",
  "description": "String",
  "id": "String (identifier)",
  "isActive": true,
  "name": "String",
  "sensitivity": 1024,
  "tooltip": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


