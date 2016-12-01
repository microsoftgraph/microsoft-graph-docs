# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_deviceconfig_deviceManagement_get.md)|[deviceManagement](../resources/intune_deviceconfig_deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_deviceconfig_deviceManagement.md) object.|
|[Update deviceManagement](../api/intune_deviceconfig_deviceManagement_update.md)|[deviceManagement](../resources/intune_deviceconfig_deviceManagement.md)|Update the properties of a [deviceManagement](../resources/intune_deviceconfig_deviceManagement.md) object.|
|[List deviceConfigurations](../api/intune_deviceconfig_deviceManagement_list_deviceConfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) collection|Get the deviceConfigurations from the deviceConfigurations navigation property.|
|[Create deviceConfiguration](../api/intune_deviceconfig_deviceManagement_create_deviceConfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|Create a new [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) by posting to the deviceConfigurations collection.|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_deviceManagement_list_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md) collection|Get the deviceCompliancePolicies from the deviceCompliancePolicies navigation property.|
|[Create deviceCompliancePolicy](../api/intune_deviceconfig_deviceManagement_create_deviceCompliancePolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md)|Create a new [deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md) by posting to the deviceCompliancePolicies collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_deviceManagementSettings.md)|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_deviceCompliancePolicy.md) collection|The device compliance policies.|

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



