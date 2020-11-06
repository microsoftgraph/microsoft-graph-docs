---
title: "educationMakeCodeResource resource type"
description: "A MakeCode resource"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "resourcePageType"
---

# educationMakeCodeResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource representing a [MakeCode](https://www.microsoft.com/en-us/makecode) project.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|projectId|String|ID of the MakeCode project|
|hostWebUrl|String|Host for the type of MakeCode resource (for example, arcade, microbit)|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationMakeCodeResource",
  "baseType": "microsoft.graph.educationResource"
}-->

```json
{
  "projectId": "String",
  "hostWebUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationMakeCodeResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

