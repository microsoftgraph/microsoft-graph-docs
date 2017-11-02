﻿# deviceCompliancePolicyGroupAssignment resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device compliance policy group assignment.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_devicecompliancepolicygroupassignment_list.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|List properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) objects.|
|[Get deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_devicecompliancepolicygroupassignment_get.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md)|Read properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) object.|
|[Create deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_devicecompliancepolicygroupassignment_create.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md)|Create a new [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) object.|
|[Delete deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_devicecompliancepolicygroupassignment_delete.md)|None|Deletes a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md).|
|[Update deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_devicecompliancepolicygroupassignment_update.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md)|Update the properties of a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|targetGroupId|String|The Id of the AAD group we are targeting the device compliance policy to.|
|excludeGroup|Boolean|Indicates if this group is should be excluded. Defaults that the group should be included|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|The navigation link to the  device compliance polic targeted.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicyGroupAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String",
  "excludeGroup": true
}
```



