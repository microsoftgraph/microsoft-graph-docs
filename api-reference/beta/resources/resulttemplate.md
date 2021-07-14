---
title: "resultTemplate resource type"
description: "A dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates."
localization_priority: Normal
author: "cristianv-ms"
ms.prod: "search"
doc_type: "resourcePageType"
---

# resultTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A dictionary of **resultTemplateIds** and associated values, which includes the name and JSON schema of the result templates.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|key|String|ID of a result template. It must map to a **resultTemplateId** in the [searchHit](searchhit.md).|
|displayName|String|Name of the result template.|
|body|Json|JSON schema of the result template.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resultTemplate",
  "baseType": null
}-->


```json
{
  "resultTemplateId": {
                    "displayName": "String",
                    "body": "Json schema"
                }
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resultTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


