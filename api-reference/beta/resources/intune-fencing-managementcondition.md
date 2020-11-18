---
title: "managementCondition resource type"
description: "Management conditions are events that can be triggered dynamically such as geo-fences, time-fences, and network-fences."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managementCondition resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Management conditions are events that can be triggered dynamically such as geo-fences, time-fences, and network-fences.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managementConditions](../api/intune-fencing-managementcondition-list.md)|[managementCondition](../resources/intune-fencing-managementcondition.md) collection|List properties and relationships of the [managementCondition](../resources/intune-fencing-managementcondition.md) objects.|
|[Get managementCondition](../api/intune-fencing-managementcondition-get.md)|[managementCondition](../resources/intune-fencing-managementcondition.md)|Read properties and relationships of the [managementCondition](../resources/intune-fencing-managementcondition.md) object.|
|[getManagementConditionsForPlatform function](../api/intune-fencing-managementcondition-getmanagementconditionsforplatform.md)|[managementCondition](../resources/intune-fencing-managementcondition.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the management condition. System generated value assigned when created.|
|uniqueName|String|Unique name for the management condition. Used in management condition expressions.|
|displayName|String|The admin defined name of the management condition.|
|description|String|The admin defined description of the management condition.|
|createdDateTime|DateTimeOffset|The time the management condition was created. Generated service side.|
|modifiedDateTime|DateTimeOffset|The time the management condition was last modified. Updated service side.|
|eTag|String|ETag of the management condition. Updated service side.|
|applicablePlatforms|[devicePlatformType](../resources/intune-shared-deviceplatformtype.md) collection|The applicable platforms for this management condition.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managementConditionStatements|[managementConditionStatement](../resources/intune-fencing-managementconditionstatement.md) collection|The management condition statements associated to the management condition.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managementCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managementCondition",
  "id": "String (identifier)",
  "uniqueName": "String",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "eTag": "String",
  "applicablePlatforms": [
    "String"
  ]
}
```




