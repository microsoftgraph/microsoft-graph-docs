# textClassificationRequest resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the request of text classification.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| The id of request. Read-only.|
|sensitiveTypeIds|String collection|The IDs of sensitive types.|
|text|String| The text to be classified.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.textClassificationRequest"
}-->

```json
{
  "id": "String (identifier)",
  "sensitiveTypeIds": ["String"],
  "text": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "textClassificationRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->