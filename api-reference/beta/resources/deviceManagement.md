# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/deviceManagement_get.md)|[deviceManagement](deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resource/deviceManagement.md) object.|
|[Update deviceManagement](../api/deviceManagement_update.md)|[deviceManagement](deviceManagement.md)|Update the properties of a [deviceManagement](../resource/deviceManagement.md) object.|
|[List deviceConfigurations](../api/deviceManagement_list_deviceConfiguration.md)|[deviceConfiguration](deviceConfiguration.md) collection|Get the deviceConfigurations from the deviceConfigurations navigation property.|
|[Create deviceConfiguration](../api/deviceManagement_create_deviceConfiguration.md)|[deviceConfiguration](deviceConfiguration.md)|Create a new [deviceConfiguration](deviceConfiguration.md) by posting to the deviceConfigurations collection.|
|[List deviceCompliancePolicies](../api/deviceManagement_list_deviceCompliancePolicy.md)|[deviceCompliancePolicy](deviceCompliancePolicy.md) collection|Get the deviceCompliancePolicies from the deviceCompliancePolicies navigation property.|
|[Create deviceCompliancePolicy](../api/deviceManagement_create_deviceCompliancePolicy.md)|[deviceCompliancePolicy](deviceCompliancePolicy.md)|Create a new [deviceCompliancePolicy](deviceCompliancePolicy.md) by posting to the deviceCompliancePolicies collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|settings|[deviceManagementSettings](deviceManagementSettings.md)|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfigurations|[deviceConfiguration](deviceConfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](deviceCompliancePolicy.md) collection|The device compliance policies.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "windowsCommercialId": "String",
    "windowsCommercialIdLastModifiedTime": "String (timestamp)"
  }
}
```


