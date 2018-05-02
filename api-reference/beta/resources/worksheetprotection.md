# WorksheetProtection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the protection of a sheet object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get WorksheetProtection](../api/worksheetprotection_get.md) | [WorksheetProtection](worksheetprotection.md) |Read properties and relationships of worksheetProtection object.|
|[Protect](../api/worksheetprotection_protect.md)|None|Protect a worksheet. It throws if the worksheet has been protected.|
|[Unprotect](../api/worksheetprotection_unprotect.md)|None|Unprotect a worksheet|

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
<!-- {
  "type": "#page.annotation",
  "description": "WorksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->