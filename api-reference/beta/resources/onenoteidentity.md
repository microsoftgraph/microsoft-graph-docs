---
title: "oneNoteIdentity resource type"
description: "**Support coming soon**"
localization_priority: Normal
author: "jewan-microsoft"
ms.prod: "onenote"
doc_type: resourcePageType
---

# oneNoteIdentity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Support coming soon**

The OneNoteIdentity type represents an identity of a _user_.

In future, this type will be merged with [Identity](identity.md)


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenoteidentity"
}-->

```json
{
  "displayName": "string",
  "id": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|string|The identity's display name.|
|id|string|Unique identifier for the identity.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "oneNoteIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/onenoteidentity.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
