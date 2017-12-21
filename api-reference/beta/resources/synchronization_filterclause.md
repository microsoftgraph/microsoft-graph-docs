# filterClause resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a single assertion that a candidate object must satisfy, and is evaluated to either `true` (object satisfies the assertion) or `false` (object does not satisfy the assertion).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|operatorName|String|Name of the operator to be applied to the source and target operands. Must be one of the supported operators. Supported operators can be discovered.|
|sourceOperandName|String|Name of source operand (the operand being tested). The source operand name must match one of the attribute names on the source object.|
|targetOperand|[filterOperand](synchronization_filteroperand.md)|Values that the source operand will be tested against.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterClause"
}-->

```json
{
  "operatorName": "String",
  "sourceOperandName": "String",
  "targetOperand": {"@odata.type": "microsoft.graph.filterOperand"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "filterClause resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->