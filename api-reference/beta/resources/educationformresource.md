---
title: "educationFormResource resource type"
description: "A subclass of educationResource. This resource is a Form."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationFormResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md). This resource is a form.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|originalFormId|String|Original id of the Form.|
|formId|String|Id of the Form.|
|isGroupForm|Boolean|Whether the Form belongs to a class group.|
|viewUrl|String|Student URL for the Form.|
|viewUrl|String|Student URL for the Form.|
|editUrl|String|Teacher URL for the Form.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFormResource"
}-->

```json
{
  "originalFormId": "String",
  "formId": "String",
  "isGroupForm": "Boolean",
  "viewUrl": "String",
  "editUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationFormResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


