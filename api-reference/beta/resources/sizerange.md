# sizeRange resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| maximumSize | Int32 | The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |
| minimumSize | Int32 | The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.sizeRange"
}-->

```json
{
  "maximumSize": "Int32",
  "minimumSize": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sizeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->