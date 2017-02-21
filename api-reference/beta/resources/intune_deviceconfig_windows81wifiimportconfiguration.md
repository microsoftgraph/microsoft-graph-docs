# windows81WifiImportConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows 8.1+ Wi-Fi import configuration. By configuring this profile you can instruct Windows 8.1 (and later) devices to connect to desired Wi-Fi endpoint. Connect a Windows 8.1 device to the desired Wi-Fi network and extract the XML from that device to later embed into this Wi-Fi profile.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81WifiImportConfigurations](../api/intune_deviceconfig_windows81wifiimportconfiguration_list.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md) collection|List properties and relationships of the [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md) objects.|
|[Get windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81wifiimportconfiguration_get.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md)|Read properties and relationships of the [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md) object.|
|[Create windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81wifiimportconfiguration_create.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md)|Create a new [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md) object.|
|[Delete windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81wifiimportconfiguration_delete.md)|None|Deletes a [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md).|
|[Update windows81WifiImportConfiguration](../api/intune_deviceconfig_windows81wifiimportconfiguration_update.md)|[windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md)|Update the properties of a [windows81WifiImportConfiguration](../resources/intune_deviceconfig_windows81wifiimportconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows81wifiimportconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_windows81wifiimportconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_windows81wifiimportconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_windows81wifiimportconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|payloadFileName|String|Payload file name (*.xml).|
|profileName|String|Profile name displayed in the UI.|
|payload|Binary|Payload. (UTF8 encoded byte array). This is the XML file saved on the device you used to connect to the Wi-Fi endpoint.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows81WifiImportConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81WifiImportConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "payloadFileName": "String",
  "profileName": "String",
  "payload": "binary"
}
```



