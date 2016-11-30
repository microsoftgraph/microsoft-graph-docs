# deviceCompliancePolicyAssignment resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyAssignments](../api/deviceCompliancePolicyAssignment_list.md)|[deviceCompliancePolicyAssignment](deviceCompliancePolicyAssignment.md) collection|List properties and relationships of the [deviceCompliancePolicyAssignment](../resource/deviceCompliancePolicyAssignment.md) objects.|
|[Get deviceCompliancePolicyAssignment](../api/deviceCompliancePolicyAssignment_get.md)|[deviceCompliancePolicyAssignment](deviceCompliancePolicyAssignment.md)|Read properties and relationships of the [deviceCompliancePolicyAssignment](../resource/deviceCompliancePolicyAssignment.md) object.|
|[Get deviceCompliancePolicy](../api/deviceCompliancePolicyAssignment_get_deviceCompliancePolicy.md)|[deviceCompliancePolicy](deviceCompliancePolicy.md)|Get the [deviceCompliancePolicy](deviceCompliancePolicy.md) from the deviceCompliancePolicy navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](deviceCompliancePolicy.md)|The navigation link to the  device compliance polic targeted.|

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


