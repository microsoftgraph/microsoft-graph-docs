# locationManagementCondition resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains the information to define a location management condition, an area of interest, to monitor.

Inherits from [managementCondition](../resources/intune_fencing_managementcondition.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List locationManagementConditions](../api/intune_fencing_locationmanagementcondition_list.md)|[locationManagementCondition](../resources/intune_fencing_locationmanagementcondition.md) collection|List properties and relationships of the [locationManagementCondition](../resources/intune_fencing_locationmanagementcondition.md) objects.|
|[Get locationManagementCondition](../api/intune_fencing_locationmanagementcondition_get.md)|[locationManagementCondition](../resources/intune_fencing_locationmanagementcondition.md)|Read properties and relationships of the [locationManagementCondition](../resources/intune_fencing_locationmanagementcondition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the management condition. System generated value assigned when created. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|uniqueName|String|Unique name for the management condition. Used in management condition expressions. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|displayName|String|The admin defined name of the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|description|String|The admin defined description of the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|createdDateTime|DateTimeOffset|The time the management condition was created. Generated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|modifiedDateTime|DateTimeOffset|The time the management condition was last modified. Updated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|eTag|String|ETag of the management condition. Updated service side. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|
|applicablePlatforms|[devicePlatformType](../resources/intune_shared_deviceplatformtype.md) collection|The applicable platforms for this management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managementConditionStatements|[managementConditionStatement](../resources/intune_fencing_managementconditionstatement.md) collection|The management condition statements associated to the management condition. Inherited from [managementCondition](../resources/intune_fencing_managementcondition.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.locationManagementCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.locationManagementCondition",
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



