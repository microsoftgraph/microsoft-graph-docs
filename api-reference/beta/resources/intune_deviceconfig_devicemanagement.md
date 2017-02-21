# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_deviceconfig_devicemanagement_get.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_deviceconfig_devicemanagement_update.md)|[deviceManagement](../resources/intune_deviceconfig_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_deviceconfig_devicemanagement.md) object.|
|[List deviceConfigurations](../api/intune_deviceconfig_devicemanagement_list_deviceconfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|Get the deviceConfigurations from the deviceConfigurations navigation property.|
|[Create deviceConfiguration](../api/intune_deviceconfig_devicemanagement_create_deviceconfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|Create a new [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) by posting to the deviceConfigurations collection.|
|[List deviceCompliancePolicies](../api/intune_deviceconfig_devicemanagement_list_devicecompliancepolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|Get the deviceCompliancePolicies from the deviceCompliancePolicies navigation property.|
|[Create deviceCompliancePolicy](../api/intune_deviceconfig_devicemanagement_create_devicecompliancepolicy.md)|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|Create a new [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) by posting to the deviceCompliancePolicies collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|settings|[deviceManagementSettings](../resources/intune_deviceconfig_devicemanagementsettings.md)|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfigurations|[deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md) collection|The device configurations.|
|deviceCompliancePolicies|[deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md) collection|The device compliance policies.|

## JSON Representation
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



