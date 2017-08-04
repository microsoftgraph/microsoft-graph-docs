# windows10WindowsInformationProtectionConfiguration resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows 10 Windows Information Protection configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10WindowsInformationProtectionConfigurations](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_list.md)|[windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) collection|List properties and relationships of the [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) objects.|
|[Get windows10WindowsInformationProtectionConfiguration](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_get.md)|[windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md)|Read properties and relationships of the [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object.|
|[Create windows10WindowsInformationProtectionConfiguration](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_create.md)|[windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md)|Create a new [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object.|
|[Delete windows10WindowsInformationProtectionConfiguration](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_delete.md)|None|Deletes a [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md).|
|[Update windows10WindowsInformationProtectionConfiguration](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_update.md)|[windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md)|Update the properties of a [windows10WindowsInformationProtectionConfiguration](../resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|
|[Get deviceConfigurationUserOverview](../api/intune_deviceconfig_windows10windowsinformationprotectionconfiguration_get_deviceconfigurationuseroverview.md)|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Get the [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) from the userStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|appRules|[windowsInformationProtectionAppRule](../resources/intune_deviceconfig_windowsinformationprotectionapprule.md) collection|App Rules.|
|enforcementMode|String|App enforcement mode for paste/drop/share actions. Possible values are: `block`, `override`, `silent`, `off`.|
|corporateIdentities|String collection|Corporate Identities. (IP address or FQDN)|
|corporateNetworkLocations|[windowsInformationProtectionCorporateNetworkLocation](../resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation.md) collection|Define your corporate network boundary to be protected by Windows Information Protection.|
|enterpriseProxyServersIsAuthoritative|Boolean|Enterprise Proxy Servers list is authoritative (do not auto-detect).|
|enterpriseIPRangesIsAuthoritative|Boolean|Enterprise IP Range list is authoritative (do not auto-detect).|
|dataRecoveryCertificate|[windowsInformationProtectionDataRecoveryCertificate](../resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate.md)|Data Recovery Certificate.|
|allowUserDecryption|Boolean|Allow user descryption.|
|requireProtectionUnderLockConfiguration|Boolean|Prevent corporate data from being accessed by apps when the device is locked. Applies only to Windows 10 Mobile.|
|revokeOnUnenroll|Boolean|Revoke encryption keys on unenroll.|
|allowWindowsSearch|Boolean|Allow Windows Search to search encrypted corporate data and Store apps.|
|showIcon|Boolean|Show the Windows Information Protection icon overlay.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10WindowsInformationProtectionConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10WindowsInformationProtectionConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "appRules": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionAppRule",
      "title": "String",
      "mode": "String",
      "template": {
        "@odata.type": "microsoft.graph.windowsInformationProtectionAppRuleStoreAppTemplate",
        "publisher": "String",
        "productName": "String"
      }
    }
  ],
  "enforcementMode": "String",
  "corporateIdentities": [
    "String"
  ],
  "corporateNetworkLocations": [
    {
      "@odata.type": "microsoft.graph.windowsInformationProtectionCorporateNetworkLocation",
      "name": "String",
      "protectedLocation": {
        "@odata.type": "microsoft.graph.windowsInformationProtectionProtectedLocationEnterpriseCloudResources",
        "values": [
          {
            "@odata.type": "microsoft.graph.enterpriseCloudResource",
            "address": "String",
            "proxyServerUri": "String"
          }
        ]
      }
    }
  ],
  "enterpriseProxyServersIsAuthoritative": true,
  "enterpriseIPRangesIsAuthoritative": true,
  "dataRecoveryCertificate": {
    "@odata.type": "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
    "dataRecoveryCertificate": "binary",
    "certificateFileName": "String"
  },
  "allowUserDecryption": true,
  "requireProtectionUnderLockConfiguration": true,
  "revokeOnUnenroll": true,
  "allowWindowsSearch": true,
  "showIcon": true
}
```



