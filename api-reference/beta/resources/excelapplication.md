# Application resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the Excel application that manages the workbook.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Application](../api/excelapplication_get.md) | [Application](application.md) |Read properties and relationships of application object.|
|[Calculate](../api/excelapplication_calculate.md)|None|Recalculate all currently opened workbooks in Excel.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|calculationMode|string|Returns the calculation mode used in the workbook. Possible values are: `Automatic`, `AutomaticExceptTables`, `Manual`. Read-only.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.application"
}-->

```json
{
  "calculationMode": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->