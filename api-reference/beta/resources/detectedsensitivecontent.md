# detectedSensitiveContent resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the detected sensitive content.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|confidence|Int32|Detection confidence which is a number between 0 to 100.|
|displayName|String| Name of the detected Sensitive type.|
|id|Guid|ID of the sensitive type.|
|matches|[sensitiveContentLocation](sensitivecontentlocation.md) collection|Collection of the detections.|
|uniqueCount|Int32|Number of detections.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.detectedSensitiveContent"
}-->

```json
{
  "confidence": 85,
  "displayName": "String",
  "id": "Guid",
  "matches": [{"@odata.type": "microsoft.graph.sensitiveContentLocation"}],
  "uniqueCount": 1
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "detectedSensitiveContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->