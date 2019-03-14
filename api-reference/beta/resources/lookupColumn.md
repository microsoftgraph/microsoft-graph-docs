---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/11/2017
title: LookupColumn
localization_priority: Normal
doc_type: resourcePageType
---
# LookupColumn resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **lookupColumn** on a [columnDefinition](columndefinition.md) resource indicates that the column's values are looked up from another source in the site.

## JSON representation

Here is a JSON representation of a **lookupColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.lookupColumn" } -->

```json
{
  "allowMultipleValues": true,
  "allowUnlimitedLength": false,
  "columnName": "string",
  "listId": "string",
  "primaryLookupColumnId": "string"
}
```

## Properties

| Property name             | Type    | Description
|:--------------------------|:--------|:---------------------------------------
| **allowMultipleValues**   | boolean | Indicates whether multiple values can be selected from the source.
| **allowUnlimitedLength**  | boolean | Indicates whether values in the column should be able to exceed the standard limit of 255 characters.
| **columnName**            | string  | The name of the lookup source column.
| **listId**                | string  | The unique identifier of the lookup source list.
| **primaryLookupColumnId** | string  | If specified, this column is a *secondary lookup*, pulling an additional field from the list item looked up by the *primary lookup*. Use the list item looked up by the *primary* as the source for the column named here.

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/LookupColumn",
  "suppressions": [
    "Error: /api-reference/beta/resources/lookupColumn.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
