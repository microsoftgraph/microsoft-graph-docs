# parseExpressionResponse resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the response from the [synchronizationSchema: parseExpression](../api/synchronization_synchronizationschema_parseexpression.md) action.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|error|odata.error|Error details, if expression evaluation resulted in an error.|
|evaluationResult|String collection|A collection of values produced by the evaluation of the expression.|
|evaluationSucceeded|Boolean|`true` if the evaluation was successful.|
|parsedExpression|[attributeMappingSource](synchronization_attributemappingsource.md)|An [attributeMappingSource](synchronization_attributemappingsource.md) object representing the parsed expression.|
|parsingSucceeded|Boolean|`true` if the expression was parsed successfully.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.parseExpressionResponse"
}-->

```json
{
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "evaluationResult": ["String"],
  "evaluationSucceeded": true,
  "parsedExpression": {"@odata.type": "microsoft.graph.attributeMappingSource"},
  "parsingSucceeded": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "parseExpressionResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->