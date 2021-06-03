---
title: "parentLabelDetails resource type"
description: "Represents the label details of an information protection parent label."
localization_priority: Normal
author: "tommoser"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# parentLabelDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the label details of an information protection parent label. **parentLabelDetails** provides information about a single information protection label. Can be returned by [evaluateRemoval](../api/informationprotectionlabel-evaluateremoval.md), [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md), and [extractLabel](../api/informationprotectionlabel-extractLabel.md)

## Properties

| Property    | Type    | Description                                                                                                  |
| :---------- | :------ | :----------------------------------------------------------------------------------------------------------- |
| color       | String  | The color that the user interface should display for the label, if configured.                               |
| description | String  | The admin-defined description for the label.                                                                 |
| id          | String  | The label ID is a globally unique identifier (GUID).                                                          |
| isActive    | Boolean | Indicates whether the label is active or not. Active labels should be hidden or disabled in user interfaces. |
| name        | String  | The plaintext name of the label.                                                                             |
| sensitivity | Int32   | The sensitivity value of the label, where lower is less sensitive.                                           |
| tooltip     | String  | The tooltip that should be displayed for the label in a user interface.                                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.parentLabelDetails",
  "baseType": null
}-->

```json
{
  "color": "String",
  "description": "String",
  "id": "String",
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
  "description": "parentLabelDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->