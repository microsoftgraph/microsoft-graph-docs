# sensitiveType resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a sensitive type.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get sensitiveType](../api/sensitivetype_get.md) | [sensitiveType](sensitivetype.md) |Read properties and relationships of sensitiveType object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String| Description of sensitive type.|
|id|String| Sensitive type ID. Read-only.|
|name|String| Sensitive type name.|
|publisherName|String| Publisher name of sensitive type.|
|rulePackageId|String| ID of Rule package which contains the sensitive type.|
|rulePackageType|String|Type of Rule package which contains the sensitive type.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sensitiveType"
}-->

```json
{
  "description": "String",
  "id": "String (identifier)",
  "name": "String",
  "publisherName": "String",
  "rulePackageId": "String",
  "rulePackageType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sensitiveType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->