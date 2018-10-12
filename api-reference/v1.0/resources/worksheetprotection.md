# WorksheetProtection resource type

Represents the protection of a sheet object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get WorksheetProtection](../api/worksheetprotection_get.md) | [WorkbookWorksheetProtection](worksheetprotection.md) |Read properties and relationships of worksheetProtection object.|
|[Protect](../api/worksheetprotection_protect.md)|None|Protect a worksheet. It throws if the worksheet has been protected.|
|[Unprotect](../api/worksheetprotection_unprotect.md)|None|Unprotect a worksheet|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|options|[WorkbookWorksheetProtectionOptions](worksheetprotectionoptions.md)|Sheet protection options. Read-only.|
|protected|boolean|Indicates if the worksheet is protected.  Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookWorksheetProtection"
}-->

```json
{
  "protected": true,
  "options": { "@odata.type": "microsoft.graph.workbookWorksheetProtectionOptions" }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "WorksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->