# managementCondition resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Management conditions are events that can be triggered dynamically such as geo-fences, time-fences, and network-fences.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managementConditions](../api/intune_fencing_managementcondition_list.md)|[managementCondition](../resources/intune_fencing_managementcondition.md) collection|List properties and relationships of the [managementCondition](../resources/intune_fencing_managementcondition.md) objects.|
|[Get managementCondition](../api/intune_fencing_managementcondition_get.md)|[managementCondition](../resources/intune_fencing_managementcondition.md)|Read properties and relationships of the [managementCondition](../resources/intune_fencing_managementcondition.md) object.|
|[getManagementConditionsForPlatform function](../api/intune_fencing_managementcondition_getmanagementconditionsforplatform.md)|[managementCondition](../resources/intune_fencing_managementcondition.md) collection|Not yet documented|

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
|applicablePlatforms|[devicePlatformType](../resources/intune_shared_deviceplatformtype.md) collection|The applicable platforms for this management condition.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managementConditionStatements|[managementConditionStatement](../resources/intune_fencing_managementconditionstatement.md) collection|The management condition statements associated to the management condition.|

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



