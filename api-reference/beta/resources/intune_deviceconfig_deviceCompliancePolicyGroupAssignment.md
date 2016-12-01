# deviceCompliancePolicyGroupAssignment resource type

Device compliance policy group assignment.

Inherits from [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyGroupAssignments](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_list.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) collection|List properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) objects.|
|[Get deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_get.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md)|Read properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) object.|
|[Create deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_create.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md)|Create a new [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) object.|
|[Delete deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_delete.md)|None|Deletes a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md).|
|[Update deviceCompliancePolicyGroupAssignment](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_update.md)|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md)|Update the properties of a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) object.|
|[Get deviceCompliancePolicy](../api/intune_deviceconfig_deviceCompliancePolicyGroupAssignment_get_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|Get the [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md) from the deviceCompliancePolicy navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device compliance policy to.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|The navigation link to the  device compliance polic targeted. Inherited from [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicyGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String"
}
```


