# deviceCompliancePolicyGroupAssignment resource type

Device compliance policy group assignment.

Inherits from [deviceCompliancePolicyAssignment](deviceCompliancePolicyAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyGroupAssignments](../api/deviceCompliancePolicyGroupAssignment_list.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) collection|List properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) objects.|
|[Get deviceCompliancePolicyGroupAssignment](../api/deviceCompliancePolicyGroupAssignment_get.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md)|Read properties and relationships of the [deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) object.|
|[Create deviceCompliancePolicyGroupAssignment](../api/deviceCompliancePolicyGroupAssignment_create.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md)|Create a new [deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) object.|
|[Delete deviceCompliancePolicyGroupAssignment](../api/deviceCompliancePolicyGroupAssignment_delete.md)|None|Deletes a [deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md).|
|[Update deviceCompliancePolicyGroupAssignment](../api/deviceCompliancePolicyGroupAssignment_update.md)|[deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md)|Update the properties of a [deviceCompliancePolicyGroupAssignment](../resources/deviceCompliancePolicyGroupAssignment.md) object.|
|[Get deviceCompliancePolicy](../api/deviceCompliancePolicyGroupAssignment_get_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|Get the [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md) from the deviceCompliancePolicy navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicyAssignment](deviceCompliancePolicyAssignment.md).|
|targetGroupId|String|The Id of the AAD group we are targeting the device compliance policy to.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|The navigation link to the  device compliance polic targeted. Inherited from [deviceCompliancePolicyAssignment](deviceCompliancePolicyAssignment.md)|

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

