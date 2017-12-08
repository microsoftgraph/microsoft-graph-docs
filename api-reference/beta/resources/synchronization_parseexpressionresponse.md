# parseExpressionResponse resource type

Response of the [synchronizationSchema: parseExpression](../api/synchronization_schema_parseexpression.md) method.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|error|odata.error|Error details, if expression evaluation resulted in an error|
|evaluationResult|String collection|Collection of values produced by the evaluation of the expression|
|evaluationSucceeded|Boolean|`true` if evaluation was succesful.|
|parsedExpression|[attributeMappingSource](synchronization_attributemappingsource.md)|[attributeMappingSource](synchronization_attributemappingsource.md) object representing the parsed expression|
|parsingSucceeded|Boolean|`true` if expression was parsed succesfully.|

## JSON representation

Here is a JSON representation of the resource.

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