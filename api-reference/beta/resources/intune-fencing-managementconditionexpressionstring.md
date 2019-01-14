---
title: "managementConditionExpressionString resource type"
description: "A management condition expression string is a string representation of a management condition expression."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# managementConditionExpressionString resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A management condition expression string is a string representation of a management condition expression.

Inherits from [managementConditionExpression](../resources/intune-fencing-managementconditionexpression.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|The management condition statement expression string value.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managementConditionExpressionString"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managementConditionExpressionString",
  "value": "String"
}
```





