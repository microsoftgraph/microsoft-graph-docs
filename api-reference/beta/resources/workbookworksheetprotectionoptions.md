---
title: "workbookWorksheetProtectionOptions resource type"
description: "Represents the options in sheet protection."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookWorksheetProtectionOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the options in sheet protection.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowAutoFilter|boolean|Represents the worksheet protection option of allowing using auto filter feature.|
|allowDeleteColumns|boolean|Represents the worksheet protection option of allowing deleting columns.|
|allowDeleteRows|boolean|Represents the worksheet protection option of allowing deleting rows.|
|allowFormatCells|boolean|Represents the worksheet protection option of allowing formatting cells.|
|allowFormatColumns|boolean|Represents the worksheet protection option of allowing formatting columns.|
|allowFormatRows|boolean|Represents the worksheet protection option of allowing formatting rows.|
|allowInsertColumns|boolean|Represents the worksheet protection option of allowing inserting columns.|
|allowInsertHyperlinks|boolean|Represents the worksheet protection option of allowing inserting hyperlinks.|
|allowInsertRows|boolean|Represents the worksheet protection option of allowing inserting rows.|
|allowPivotTables|boolean|Represents the worksheet protection option of allowing using pivot table feature.|
|allowSort|boolean|Represents the worksheet protection option of allowing using sort feature.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookWorksheetProtectionOptions"
}-->

```json
{
  "allowAutoFilter": true,
  "allowDeleteColumns": true,
  "allowDeleteRows": true,
  "allowFormatCells": true,
  "allowFormatColumns": true,
  "allowFormatRows": true,
  "allowInsertColumns": true,
  "allowInsertHyperlinks": true,
  "allowInsertRows": true,
  "allowPivotTables": true,
  "allowSort": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookWorksheetProtectionOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


