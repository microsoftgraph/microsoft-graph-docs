# attributeMappingFunctionSchema resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Describes a function that can be used in an [attribute mapping](synchronization_attributeMapping.md) to transform values during synchronization.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/synchronization_synchronizationschema_functions.md) | [attributeMappingFunctionSchema](../resources/synchronization_attributemappingfunctionschema.md) collection|List supported attribute mapping functions.|

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|name                        |String                    |Operator name. |
|parameters                  |[attributeMappingParameterSchema](../resources/synchronization_attributemappingparameterschema.md) collection  |Collection of function parameters.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingFunctionSchema"
}-->

```json
{
  "name": "String (identifier)",
  "parameters": [{"@odata.type": "microsoft.graph.attributeMappingParameterSchema"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attributeMappingFunctionSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->