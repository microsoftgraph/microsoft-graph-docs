---
title: "educationExcelResource resource type"
description: "A subclass of educationResource. This resource type represents an Excel document.  "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationExcelResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md). This resource type represents an Excel document.  
 
>**Note:** The Excel file must be in the resource folder associated with the assignment
or submission object to which this resource belongs.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fileUrl|String|Pointer to the Excel file object.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationExcelResource"
}-->

```json
{
  "fileUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationExcelResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


