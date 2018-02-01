# sensitiveContentLocation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the location of detected sensitive type.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|evidences|[sensitiveContentEvidence](sensitivecontentevidence.md) collection|List of corroborative evidences.|
|idMatch|String|Primary match of the detected sensitive type.|
|length|Int32|Length in characters of the sensitive content.|
|offset|Int32|Offset in characters of the sensitive content.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sensitiveContentLocation"
}-->

```json
{
  "evidences": [{"@odata.type": "microsoft.graph.sensitiveContentEvidence"}],
  "idMatch": "String",
  "length": 1024,
  "offset": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sensitiveContentLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->