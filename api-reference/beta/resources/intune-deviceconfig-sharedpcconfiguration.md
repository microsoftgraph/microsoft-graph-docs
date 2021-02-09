---
title: "sharedPCConfiguration resource type"
description: "This topic provides descriptions of the declared methods, properties and relationships exposed by the sharedPCConfiguration resource."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# sharedPCConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This topic provides descriptions of the declared methods, properties and relationships exposed by the sharedPCConfiguration resource.


Inherits from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List sharedPCConfigurations](../api/intune-deviceconfig-sharedpcconfiguration-list.md)|[sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md) collection|List properties and relationships of the [sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md) objects.|
|[Get sharedPCConfiguration](../api/intune-deviceconfig-sharedpcconfiguration-get.md)|[sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md)|Read properties and relationships of the [sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md) object.|
|[Create sharedPCConfiguration](../api/intune-deviceconfig-sharedpcconfiguration-create.md)|[sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md)|Create a new [sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md) object.|
|[Delete sharedPCConfiguration](../api/intune-deviceconfig-sharedpcconfiguration-delete.md)|None|Deletes a [sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md).|
|[Update sharedPCConfiguration](../api/intune-deviceconfig-sharedpcconfiguration-update.md)|[sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md)|Update the properties of a [sharedPCConfiguration](../resources/intune-deviceconfig-sharedpcconfiguration.md) object.|

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
|accountManagerPolicy|[sharedPCAccountManagerPolicy](../resources/intune-deviceconfig-sharedpcaccountmanagerpolicy.md)|Specifies how accounts are managed on a shared PC. Only applies when disableAccountManager is false.|
|allowedAccounts|[sharedPCAllowedAccountType](../resources/intune-deviceconfig-sharedpcallowedaccounttype.md)|Indicates which type of accounts are allowed to use on a shared PC. Possible values are: `notConfigured`, `guest`, `domain`.|
|localStorage|[enablement](../resources/intune-shared-enablement.md)|Specifies whether local storage is allowed on a shared PC. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|allowLocalStorage|Boolean|Specifies whether local storage is allowed on a shared PC.|
|setAccountManager|[enablement](../resources/intune-shared-enablement.md)|Disables the account manager for shared PC mode. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|disableAccountManager|Boolean|Disables the account manager for shared PC mode.|
|setEduPolicies|[enablement](../resources/intune-shared-enablement.md)|Specifies whether the default shared PC education environment policies should be enabled/disabled/not configured. For Windows 10 RS2 and later, this policy will be applied without setting Enabled to true. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|disableEduPolicies|Boolean|Specifies whether the default shared PC education environment policies should be disabled. For Windows 10 RS2 and later, this policy will be applied without setting Enabled to true.|
|setPowerPolicies|[enablement](../resources/intune-shared-enablement.md)|Specifies whether the default shared PC power policies should be enabled/disabled. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|disablePowerPolicies|Boolean|Specifies whether the default shared PC power policies should be disabled.|
|signInOnResume|[enablement](../resources/intune-shared-enablement.md)|Specifies the requirement to sign in whenever the device wakes up from sleep mode. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|disableSignInOnResume|Boolean|Disables the requirement to sign in whenever the device wakes up from sleep mode.|
|enabled|Boolean|Enables shared PC mode and applies the shared pc policies.|
|idleTimeBeforeSleepInSeconds|Int32|Specifies the time in seconds that a device must sit idle before the PC goes to sleep. Setting this value to 0 prevents the sleep timeout from occurring.|
|kioskAppDisplayName|String|Specifies the display text for the account shown on the sign-in screen which launches the app specified by SetKioskAppUserModelId. Only applies when KioskAppUserModelId is set.|
|kioskAppUserModelId|String|Specifies the application user model ID of the app to use with assigned access.|
|maintenanceStartTime|TimeOfDay|Specifies the daily start time of maintenance hour.|
|fastFirstSignIn|[enablement](../resources/intune-shared-enablement.md)|Specifies whether to auto connect new non-admin Azure AD accounts to pre-configured candidate local accounts. Possible values are: `notConfigured`, `enabled`, `disabled`.|

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
  "@odata.type": "microsoft.graph.sharedPCConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharedPCConfiguration",
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
  "accountManagerPolicy": {
    "@odata.type": "microsoft.graph.sharedPCAccountManagerPolicy",
    "accountDeletionPolicy": "String",
    "cacheAccountsAboveDiskFreePercentage": 1024,
    "inactiveThresholdDays": 1024,
    "removeAccountsBelowDiskFreePercentage": 1024
  },
  "allowedAccounts": "String",
  "localStorage": "String",
  "allowLocalStorage": true,
  "setAccountManager": "String",
  "disableAccountManager": true,
  "setEduPolicies": "String",
  "disableEduPolicies": true,
  "setPowerPolicies": "String",
  "disablePowerPolicies": true,
  "signInOnResume": "String",
  "disableSignInOnResume": true,
  "enabled": true,
  "idleTimeBeforeSleepInSeconds": 1024,
  "kioskAppDisplayName": "String",
  "kioskAppUserModelId": "String",
  "maintenanceStartTime": "String (time of day)",
  "fastFirstSignIn": "String"
}
```




