---
title: "windowsDeliveryOptimizationConfiguration resource type"
description: "Windows Delivery Optimization configuration"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDeliveryOptimizationConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Delivery Optimization configuration


Inherits from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDeliveryOptimizationConfigurations](../api/intune-deviceconfig-windowsdeliveryoptimizationconfiguration-list.md)|[windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md) collection|List properties and relationships of the [windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md) objects.|
|[Get windowsDeliveryOptimizationConfiguration](../api/intune-deviceconfig-windowsdeliveryoptimizationconfiguration-get.md)|[windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md)|Read properties and relationships of the [windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md) object.|
|[Create windowsDeliveryOptimizationConfiguration](../api/intune-deviceconfig-windowsdeliveryoptimizationconfiguration-create.md)|[windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md)|Create a new [windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md) object.|
|[Delete windowsDeliveryOptimizationConfiguration](../api/intune-deviceconfig-windowsdeliveryoptimizationconfiguration-delete.md)|None|Deletes a [windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md).|
|[Update windowsDeliveryOptimizationConfiguration](../api/intune-deviceconfig-windowsdeliveryoptimizationconfiguration-update.md)|[windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md)|Update the properties of a [windowsDeliveryOptimizationConfiguration](../resources/intune-deviceconfig-windowsdeliveryoptimizationconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition.md)|The OS edition applicability for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion.md)|The OS version applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode.md)|The device mode applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deliveryOptimizationMode|[windowsDeliveryOptimizationMode](../resources/intune-deviceconfig-windowsdeliveryoptimizationmode.md)|Specifies the download method that delivery optimization can use to manage network bandwidth consumption for large content distribution scenarios. Possible values are: `userDefined`, `httpOnly`, `httpWithPeeringNat`, `httpWithPeeringPrivateGroup`, `httpWithInternetPeering`, `simpleDownload`, `bypassMode`.|
|restrictPeerSelectionBy|[deliveryOptimizationRestrictPeerSelectionByOptions](../resources/intune-deviceconfig-deliveryoptimizationrestrictpeerselectionbyoptions.md)|Specifies to restrict peer selection via selected option.
Option 1 (Subnet mask) only applies to Delivery Optimization modes Download Mode LAN (1) and Group (2). Possible values are: `notConfigured`, `subnetMask`.|
|groupIdSource|[deliveryOptimizationGroupIdSource](../resources/intune-deviceconfig-deliveryoptimizationgroupidsource.md)|Specifies to restrict peer selection to a specfic source.
The options set in this policy only apply to Delivery Optimization mode Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored. For option 3 - DHCP Option ID, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID.|
|bandwidthMode|[deliveryOptimizationBandwidth](../resources/intune-deviceconfig-deliveryoptimizationbandwidth.md)|Specifies foreground and background bandwidth usage using percentages, absolutes, or hours.|
|backgroundDownloadFromHttpDelayInSeconds|Int64|Specifies number of seconds to delay an HTTP source in a background download that is allowed to use peer-to-peer. Valid values 0 to 4294967295|
|foregroundDownloadFromHttpDelayInSeconds|Int64|Specifies number of seconds to delay an HTTP source in a foreground download that is allowed to use peer-to-peer (0-86400). Valid values 0 to 86400
Specifying 0 sets Delivery Optimization to manage this setting using the cloud service. Valid values 0 to 86400|
|minimumRamAllowedToPeerInGigabytes|Int32|Specifies the minimum RAM size in GB to use Peer Caching (1-100000). Valid values 1 to 100000|
|minimumDiskSizeAllowedToPeerInGigabytes|Int32|Specifies the minimum disk size in GB to use Peer Caching (1-100000). Valid values 1 to 100000
Recommended values: 64 GB to 256 GB. Valid values 1 to 100000|
|minimumFileSizeToCacheInMegabytes|Int32|Specifies the minimum content file size in MB enabled to use Peer Caching (1-100000). Valid values 1 to 100000
Recommended values: 1 MB to 100,000 MB. Valid values 1 to 100000|
|minimumBatteryPercentageAllowedToUpload|Int32|Specifies the minimum battery percentage to allow the device to upload data (0-100). Valid values 0 to 100
The default value is 0. The value 0 (zero) means "not limited" and the cloud service default value will be used. Valid values 0 to 100|
|modifyCacheLocation|String|Specifies the drive that Delivery Optimization should use for its cache.|
|maximumCacheAgeInDays|Int32|Specifies the maximum time in days that each file is held in the Delivery Optimization cache after downloading successfully (0-3650). Valid values 0 to 3650|
|maximumCacheSize|[deliveryOptimizationMaxCacheSize](../resources/intune-deviceconfig-deliveryoptimizationmaxcachesize.md)|Specifies the maximum cache size that Delivery Optimization either as a percentage or in GB.|
|vpnPeerCaching|[enablement](../resources/intune-shared-enablement.md)|Specifies whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|cacheServerHostNames|String collection|Specifies cache servers host names.|
|cacheServerForegroundDownloadFallbackToHttpDelayInSeconds|Int32|Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a foreground download. Valid values 0 to 2592000.​|
|cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds|Int32|Specifies number of seconds to delay a fall back from cache servers to an HTTP source for a background download. Valid values 0 to 2592000.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfig-deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDeliveryOptimizationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDeliveryOptimizationConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "String"
    ],
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "String",
    "maxOSVersion": "String",
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "String",
    "name": "String",
    "ruleType": "String"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "deliveryOptimizationMode": "String",
  "restrictPeerSelectionBy": "String",
  "groupIdSource": {
    "@odata.type": "microsoft.graph.deliveryOptimizationGroupIdSource"
  },
  "bandwidthMode": {
    "@odata.type": "microsoft.graph.deliveryOptimizationBandwidth"
  },
  "backgroundDownloadFromHttpDelayInSeconds": 1024,
  "foregroundDownloadFromHttpDelayInSeconds": 1024,
  "minimumRamAllowedToPeerInGigabytes": 1024,
  "minimumDiskSizeAllowedToPeerInGigabytes": 1024,
  "minimumFileSizeToCacheInMegabytes": 1024,
  "minimumBatteryPercentageAllowedToUpload": 1024,
  "modifyCacheLocation": "String",
  "maximumCacheAgeInDays": 1024,
  "maximumCacheSize": {
    "@odata.type": "microsoft.graph.deliveryOptimizationMaxCacheSize"
  },
  "vpnPeerCaching": "String",
  "cacheServerHostNames": [
    "String"
  ],
  "cacheServerForegroundDownloadFallbackToHttpDelayInSeconds": 1024,
  "cacheServerBackgroundDownloadFallbackToHttpDelayInSeconds": 1024
}
```




