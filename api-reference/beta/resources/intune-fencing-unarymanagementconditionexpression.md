---
title: "unaryManagementConditionExpression resource type"
description: "A management condition expression that is evaluated using a unary operation."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# unaryManagementConditionExpression resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A management condition expression that is evaluated using a unary operation.

Inherits from [managementConditionExpressionModel](../resources/intune-fencing-managementconditionexpressionmodel.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operator|[unaryManagementConditionExpressionOperatorType](../resources/intune-fencing-unarymanagementconditionexpressionoperatortype.md)|The operator used in the evaluation of the unary operation. Possible values are: `not`.|
|operand|[managementConditionExpressionModel](../resources/intune-fencing-managementconditionexpressionmodel.md)|The operand of the unary operation.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unaryManagementConditionExpression"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unaryManagementConditionExpression",
  "operator": "String",
  "operand": {
    "@odata.type": "microsoft.graph.managementConditionExpressionModel"
  }
}
```





