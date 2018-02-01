# detectedSensitiveContentWrapper resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the wrapper of detected sensitive content.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classification|[detectedSensitiveContent](detectedsensitivecontent.md) collection||

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.detectedSensitiveContentWrapper"
}-->

```json
{
  "classification": [{"@odata.type": "microsoft.graph.detectedSensitiveContent"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "detectedSensitiveContentWrapper resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->