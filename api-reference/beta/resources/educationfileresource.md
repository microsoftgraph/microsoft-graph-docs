---
title: "educationFileResource resource type"
description: "A subclass of educationResource that represents a file object that is associated with the assignment or submission.  In this case, the file is not one of the special files (Word, Excel, and so on) but is a file that does not have special handling within the system. The file resource must be stored in the **resourceFolder** that is associated with the assignment or submission this resource is attached to."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationFileResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md) that represents a file object that is associated with the assignment or submission.  In this case, the file is not one of the special files (Word, Excel, and so on) but is a file that does not have special handling within the system. The file resource must be stored in the **resourceFolder** that is associated with the assignment or submission this resource is attached to.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fileUrl|String|Location on disk of the file resource.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFileResource"
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
  "description": "educationFileResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


