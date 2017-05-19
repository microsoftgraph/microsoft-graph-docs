# deviceCompliancePolicyAssignment resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyAssignments](../api/deviceCompliancePolicyAssignment_list.md)|[deviceCompliancePolicyAssignment](../resources/deviceCompliancePolicyAssignment.md) collection|List properties and relationships of the [deviceCompliancePolicyAssignment](../resources/deviceCompliancePolicyAssignment.md) objects.|
|[Get deviceCompliancePolicyAssignment](../api/deviceCompliancePolicyAssignment_get.md)|[deviceCompliancePolicyAssignment](../resources/deviceCompliancePolicyAssignment.md)|Read properties and relationships of the [deviceCompliancePolicyAssignment](../resources/deviceCompliancePolicyAssignment.md) object.|
|[Get deviceCompliancePolicy](../api/deviceCompliancePolicyAssignment_get_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|Get the [deviceCompliancePolicy](../resources/deviceCompliancePolicy.md) from the deviceCompliancePolicy navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/deviceCompliancePolicy.md)|The navigation link to the  device compliance polic targeted.|

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


