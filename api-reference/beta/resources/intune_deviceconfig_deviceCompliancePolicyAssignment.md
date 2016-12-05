# deviceCompliancePolicyAssignment resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyAssignments](../api/intune_deviceconfig_deviceCompliancePolicyAssignment_list.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md) collection|List properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md) objects.|
|[Get deviceCompliancePolicyAssignment](../api/intune_deviceconfig_deviceCompliancePolicyAssignment_get.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md)|Read properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md) object.|
|[Get deviceCompliancePolicy](../api/intune_deviceconfig_deviceCompliancePolicyAssignment_get_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|Get the [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md) from the deviceCompliancePolicy navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|The navigation link to the  device compliance polic targeted.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicyAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
  "id": "String (identifier)"
}
```



