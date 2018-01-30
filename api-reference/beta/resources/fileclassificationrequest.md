# fileClassificationRequest resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the request of file classification.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|file|Stream| The file's content.|
|id|String| The id of request. Read-only.|
|sensitiveTypeIds|String collection|The IDs of sensitive types. String collection|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileClassificationRequest"
}-->

```json
{
  "file": "Stream",
  "id": "String (identifier)",
  "sensitiveTypeIds": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileClassificationRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->