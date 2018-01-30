# caasError resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an error of data classification service.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|String| One of a server-defined set of error codes.|
|message|String| A human-readable representation of the error.|
|target|String| The target of the error. |
|details|[caasChildError](caaschilderror.md) collection|An array of details about specific errors that led to this reported error.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.caasError"
}-->

```json
{
  "code": "String",
  "message": "String",
  "target": "String"
  "details": [{"@odata.type": "microsoft.graph.caasChildError"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "caasError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->