---
title: "managementConditionStatement resource type"
description: "A management condition statement is a group of management conditions that enable/disable device/application configurations when all contained management conditions are met."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# managementConditionStatement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A management condition statement is a group of management conditions that enable/disable device/application configurations when all contained management conditions are met.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managementConditionStatements](../api/intune-fencing-managementconditionstatement-list.md)|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) collection|List properties and relationships of the [managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) objects.|
|[Get managementConditionStatement](../api/intune-fencing-managementconditionstatement-get.md)|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md)|Read properties and relationships of the [managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) object.|
|[Create managementConditionStatement](../api/intune-fencing-managementconditionstatement-create.md)|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md)|Create a new [managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) object.|
|[Delete managementConditionStatement](../api/intune-fencing-managementconditionstatement-delete.md)|None|Deletes a [managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md).|
|[Update managementConditionStatement](../api/intune-fencing-managementconditionstatement-update.md)|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md)|Update the properties of a [managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) object.|
|[getManagementConditionStatementExpressionString function](../api/intune-fencing-managementconditionstatement-getmanagementconditionstatementexpressionstring.md)|[managementConditionExpressionString](../resources/intune-fencing-managementconditionexpressionstring.md)|Not yet documented|
|[getManagementConditionStatementsForPlatform function](../api/intune-fencing-managementconditionstatement-getmanagementconditionstatementsforplatform.md)|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the management condition statement. System generated value assigned when created.|
|displayName|String|The admin defined name of the management condition statement.|
|description|String|The admin defined description of the management condition statement.|
|createdDateTime|DateTimeOffset|The time the management condition statement was created. Generated service side.|
|modifiedDateTime|DateTimeOffset|The time the management condition statement was last modified. Updated service side.|
|expression|[managementConditionExpression](../resources/intune-fencing-managementconditionexpression.md)|The management condition statement expression used to evaluate if a management condition statement was activated/deactivated.|
|eTag|String|ETag of the management condition statement. Updated service side.|
|applicablePlatforms|[devicePlatformType](../resources/intune-shared-deviceplatformtype.md) collection|The applicable platforms for this management condition statement.
This is calculated from looking the management conditions associated to the management condition statement and finding the intersection of applicable platforms.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managementConditions|[managementCondition](../resources/intune-fencing-managementcondition.md) collection|The management conditions associated to the management condition statement.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managementConditionStatement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managementConditionStatement",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "expression": {
    "@odata.type": "microsoft.graph.managementConditionExpression"
  },
  "eTag": "String",
  "applicablePlatforms": [
    "String"
  ]
}
```





