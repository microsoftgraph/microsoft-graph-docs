---
title: "workbookWorksheetProtection resource type"
description: "Represents the protection of a sheet object."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookWorksheetProtection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the protection of a sheet object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookWorksheetProtection](../api/worksheetprotection-get.md) | [workbookWorksheetProtection](workbookworksheetprotection.md) |Read properties and relationships of workbookWorksheetProtection object.|
|[Protect](../api/worksheetprotection-protect.md)|None|Protect a worksheet. It throws if the worksheet has been protected.|
|[Unprotect](../api/worksheetprotection-unprotect.md)|None|Unprotect a worksheet|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|options|[workbookWorksheetProtectionOptions](workbookworksheetprotectionoptions.md)|Sheet protection options. Read-only.|
|protected|boolean|Indicates if the worksheet is protected.  Read-only.|

## Relationships
None.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "options"
  ],
  "@odata.type": "microsoft.graph.workbookWorksheetProtection"
}-->

```json
{
  "protected": "boolean"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookWorksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


