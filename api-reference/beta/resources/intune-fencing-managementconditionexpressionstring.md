---
title: "managementConditionExpressionString resource type"
description: "A management condition expression string is a string representation of a management condition expression."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# managementConditionExpressionString resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

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




