---
title: "managedDeviceEncryptionState resource type"
description: "Encryption report per device"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedDeviceEncryptionState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Encryption report per device

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceEncryptionStates](../api/intune-deviceconfig-manageddeviceencryptionstate-list.md)|[managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) collection|List properties and relationships of the [managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) objects.|
|[Get managedDeviceEncryptionState](../api/intune-deviceconfig-manageddeviceencryptionstate-get.md)|[managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md)|Read properties and relationships of the [managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) object.|
|[Create managedDeviceEncryptionState](../api/intune-deviceconfig-manageddeviceencryptionstate-create.md)|[managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md)|Create a new [managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) object.|
|[Delete managedDeviceEncryptionState](../api/intune-deviceconfig-manageddeviceencryptionstate-delete.md)|None|Deletes a [managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md).|
|[Update managedDeviceEncryptionState](../api/intune-deviceconfig-manageddeviceencryptionstate-update.md)|[managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md)|Update the properties of a [managedDeviceEncryptionState](../resources/intune-deviceconfig-manageddeviceencryptionstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userPrincipalName|String|User name|
|deviceType|[deviceTypes](../resources/intune-deviceconfig-devicetypes.md)|Platform of the device. Possible values are: `desktop`, `windowsRT`, `winMO6`, `nokia`, `windowsPhone`, `mac`, `winCE`, `winEmbedded`, `iPhone`, `iPad`, `iPod`, `android`, `iSocConsumer`, `unix`, `macMDM`, `holoLens`, `surfaceHub`, `androidForWork`, `androidEnterprise`, `blackberry`, `palm`, `unknown`.|
|osVersion|String|Operating system version of the device|
|tpmSpecificationVersion|String|Device TPM Version|
|deviceName|String|Device name|
|encryptionReadinessState|[encryptionReadinessState](../resources/intune-deviceconfig-encryptionreadinessstate.md)|Encryption readiness state. Possible values are: `notReady`, `ready`.|
|encryptionState|[encryptionState](../resources/intune-deviceconfig-encryptionstate.md)|Device encryption state. Possible values are: `notEncrypted`, `encrypted`.|
|encryptionPolicySettingState|[complianceStatus](../resources/intune-shared-compliancestatus.md)|Encryption policy setting state. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|advancedBitLockerStates|[advancedBitLockerState](../resources/intune-deviceconfig-advancedbitlockerstate.md)|Advanced BitLocker State. Possible values are: `success`, `noUserConsent`, `osVolumeEncryptionMethodMismatch`, `osVolumeTpmRequired`, `osVolumeTpmOnlyRequired`, `osVolumeTpmPinRequired`, `osVolumeTpmStartupKeyRequired`, `osVolumeTpmPinStartupKeyRequired`, `osVolumeUnprotected`, `recoveryKeyBackupFailed`, `fixedDriveNotEncrypted`, `fixedDriveEncryptionMethodMismatch`, `loggedOnUserNonAdmin`, `windowsRecoveryEnvironmentNotConfigured`, `tpmNotAvailable`, `tpmNotReady`, `networkError`.|
|fileVaultStates|[fileVaultState](../resources/intune-deviceconfig-filevaultstate.md)|FileVault State. Possible values are: `success`, `driveEncryptedByUser`, `userDeferredEncryption`, `escrowNotEnabled`.|
|policyDetails|[encryptionReportPolicyDetails](../resources/intune-deviceconfig-encryptionreportpolicydetails.md) collection|Policy Details|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceEncryptionState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceEncryptionState",
  "id": "String (identifier)",
  "userPrincipalName": "String",
  "deviceType": "String",
  "osVersion": "String",
  "tpmSpecificationVersion": "String",
  "deviceName": "String",
  "encryptionReadinessState": "String",
  "encryptionState": "String",
  "encryptionPolicySettingState": "String",
  "advancedBitLockerStates": "String",
  "fileVaultStates": "String",
  "policyDetails": [
    {
      "@odata.type": "microsoft.graph.encryptionReportPolicyDetails",
      "policyId": "String",
      "policyName": "String"
    }
  ]
}
```




