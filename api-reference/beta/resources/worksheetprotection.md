---
title: "WorksheetProtection resource type"
description: "Represents the protection of a sheet object."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# WorksheetProtection resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the protection of a sheet object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get WorksheetProtection](../api/worksheetprotection-get.md) | [WorksheetProtection](worksheetprotection.md) |Read properties and relationships of worksheetProtection object.|
|[Protect](../api/worksheetprotection-protect.md)|None|Protect a worksheet. It throws if the worksheet has been protected.|
|[Unprotect](../api/worksheetprotection-unprotect.md)|None|Unprotect a worksheet|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|protected|boolean|Indicates if the worksheet is protected.  Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|options|[WorksheetProtectionOptions](worksheetprotectionoptions.md)|Sheet protection options. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.worksheetProtection"
}-->

```json
{
  "protected": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "WorksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/worksheetprotection.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
