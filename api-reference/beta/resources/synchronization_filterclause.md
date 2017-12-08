# filterClause resource type

Clause represent a single assertion which a candidate object must satisfy, and is evaluated to either `true` (object satisfies the assertion) or `false` (object does not satisfy the assertion).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|operatorName|String|Name of the operator to be applied to source and target operands. Must be one fo the supported operators. Supported operators can be discovered.|
|sourceOperandName|String|Name of source operand (operand being tested). Source operand name must match one of the attribute names on the source object.|
|targetOperand|[filterOperand](synchronization_filteroperand.md)|Values that source operand will be tested against.|

## JSON representation

Here is a JSON representation of the resource.

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