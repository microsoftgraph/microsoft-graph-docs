# expressionInputObject resource type

Represents an object to be used as input test data during expression evaluation in [synchronizationSchema: parseExpression](../api/synchronization_schema_parseexpression.md) method.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|[objectDefinition](synchronization_objectdefinition.md)|Definition of the test object.|
|properties|[stringKeyObjectValuePair](synchronization_stringkeyobjectvaluepair.md) collection|Property values of the test object.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.expressionInputObject"
}-->

```json
{
  "definition": {"@odata.type": "microsoft.graph.objectDefinition"},
  "properties": [{"@odata.type": "microsoft.graph.stringKeyObjectValuePair"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "expressionInputObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->