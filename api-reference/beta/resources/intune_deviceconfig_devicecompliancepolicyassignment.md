# deviceCompliancePolicyAssignment resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceCompliancePolicyAssignments](../api/intune_deviceconfig_devicecompliancepolicyassignment_list.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection|List properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) objects.|
|[Get deviceCompliancePolicyAssignment](../api/intune_deviceconfig_devicecompliancepolicyassignment_get.md)|[deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md)|Read properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) object.|
|[Get deviceCompliancePolicy](../api/intune_deviceconfig_devicecompliancepolicyassignment_get_devicecompliancepolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Get the [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) from the deviceCompliancePolicy navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceCompliancePolicy|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|The navigation link to the  device compliance polic targeted.|

## JSON Representation
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



