﻿# binaryManagementConditionExpression resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A management condition expression that is evaluated using a binary operation.

Inherits from [managementConditionExpressionModel](../resources/intune_fencing_managementconditionexpressionmodel.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operator|[binaryManagementConditionExpressionOperatorType](../resources/intune_fencing_binarymanagementconditionexpressionoperatortype.md)|The operator used in the evaluation of the binary operation. Possible values are: `or`, `and`.|
|firstOperand|[managementConditionExpressionModel](../resources/intune_fencing_managementconditionexpressionmodel.md)|The first operand of the binary operation.|
|secondOperand|[managementConditionExpressionModel](../resources/intune_fencing_managementconditionexpressionmodel.md)|The second operand of the binary operation.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.binaryManagementConditionExpression"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.binaryManagementConditionExpression",
  "operator": "String",
  "firstOperand": {
    "@odata.type": "microsoft.graph.managementConditionExpressionModel"
  },
  "secondOperand": {
    "@odata.type": "microsoft.graph.managementConditionExpressionModel"
  }
}
```





