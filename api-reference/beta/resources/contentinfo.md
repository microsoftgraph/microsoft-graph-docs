---
title: "contentInfo resource type"
description: "Represents the current state of some information that is to be labeled."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# contentInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of some information that is to be labeled. **contentInfo** is passed in to the [evaluateRemoval](../api/informationprotectionlabel-evaluateRemoval.md), [evaluateApplication](../api/informationprotectionlabel-evaluateApplication.md), and [evaluateClassificationResults](../api/informationprotectionlabel-evaluateClassificationResults.md) APIs to describe to the API the current state of the information. This **contentInfo** detail drives the results on what metadata, content marking, and protection should be added or removed when the label is applied, updated, or removed. 

## Properties

| Property   | Type                                       | Description                                                                                                                     |
| :--------- | :----------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| format     | String                                     | Possible values are: `default`, `email`.                                                                                        |
| identifier | String                                     | Identifier used for Azure Information Protection Analytics.                                                                     |
| metadata   | [keyValuePair](keyvaluepair.md) collection | Existing Microsoft Information Protection metadata is passed as key/value pairs, where the key is the MSIP_Label_GUID_PropName. |
| state      | String                                     | Possible values are: `rest`, `motion`, `use`.                                                                                   |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.contentInfo",
  "baseType": null
}-->

```json
{
  "format": "String",
  "identifier": "String",
  "metadata": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "state": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contentInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

