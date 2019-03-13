---
author: daspek
ms.author: dspektor
ms.date: 09/12/2017
title: ContentTypeInfo
localization_priority: Normal
doc_type: resourcePageType
---
# ContentTypeInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **contentTypeInfo** resource indicates the SharePoint content type of an item.

## JSON representation

Here is a JSON representation of a **contentTypeInfo** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.contentTypeInfo", "@type.aka": "oneDrive.contentTypeFacet" } -->

```json
{
  "id": "string",
  "name": "string"
}
```

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| **id**         | string  | The id of the content type.
| **name**       | string  | The name of the content type.

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentTypeInfo",
  "suppressions": [
    "Error: /api-reference/beta/resources/contenttypeinfo.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
