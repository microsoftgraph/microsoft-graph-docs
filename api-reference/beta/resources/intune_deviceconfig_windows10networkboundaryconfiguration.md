# windows10NetworkBoundaryConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows10 Network Boundary Configuration

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10NetworkBoundaryConfigurations](../api/intune_deviceconfig_windows10networkboundaryconfiguration_list.md)|[windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md) collection|List properties and relationships of the [windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md) objects.|
|[Get windows10NetworkBoundaryConfiguration](../api/intune_deviceconfig_windows10networkboundaryconfiguration_get.md)|[windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md)|Read properties and relationships of the [windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md) object.|
|[Create windows10NetworkBoundaryConfiguration](../api/intune_deviceconfig_windows10networkboundaryconfiguration_create.md)|[windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md)|Create a new [windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md) object.|
|[Delete windows10NetworkBoundaryConfiguration](../api/intune_deviceconfig_windows10networkboundaryconfiguration_delete.md)|None|Deletes a [windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md).|
|[Update windows10NetworkBoundaryConfiguration](../api/intune_deviceconfig_windows10networkboundaryconfiguration_update.md)|[windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md)|Update the properties of a [windows10NetworkBoundaryConfiguration](../resources/intune_deviceconfig_windows10networkboundaryconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|windowsNetworkIsolationPolicy|[windowsNetworkIsolationPolicy](../resources/intune_deviceconfig_windowsnetworkisolationpolicy.md)|Windows Network Isolation Policy|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10NetworkBoundaryConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10NetworkBoundaryConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "windowsNetworkIsolationPolicy": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationPolicy",
    "enterpriseNetworkDomainNames": [
      "String"
    ],
    "enterpriseCloudResources": [
      {
        "@odata.type": "microsoft.graph.proxiedDomain",
        "ipAddressOrFQDN": "String",
        "proxy": "String"
      }
    ],
    "enterpriseIPRanges": [
      {
        "@odata.type": "microsoft.graph.iPv6Range",
        "lowerAddress": "String",
        "upperAddress": "String"
      }
    ],
    "enterpriseInternalProxyServers": [
      "String"
    ],
    "enterpriseIPRangesAreAuthoritative": true,
    "enterpriseProxyServers": [
      "String"
    ],
    "enterpriseProxyServersAreAuthoritative": true,
    "neutralDomainResources": [
      "String"
    ]
  }
}
```



