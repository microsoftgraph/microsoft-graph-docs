---
title: "bitLockerSystemDrivePolicy resource type"
description: "BitLocker Encryption Base Policies."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# bitLockerSystemDrivePolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

BitLocker Encryption Base Policies.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptionMethod|[bitLockerEncryptionMethod](../resources/intune-deviceconfig-bitlockerencryptionmethod.md)|Select the encryption method for operating system drives. Possible values are: `aesCbc128`, `aesCbc256`, `xtsAes128`, `xtsAes256`.|
|startupAuthenticationRequired|Boolean|Require additional authentication at startup.|
|startupAuthenticationBlockWithoutTpmChip|Boolean|Indicates whether to allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).|
|startupAuthenticationTpmUsage|[configurationUsage](../resources/intune-deviceconfig-configurationusage.md)|Indicates if TPM startup is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`, `notConfigured`.|
|startupAuthenticationTpmPinUsage|[configurationUsage](../resources/intune-deviceconfig-configurationusage.md)|Indicates if TPM startup pin is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`, `notConfigured`.|
|startupAuthenticationTpmKeyUsage|[configurationUsage](../resources/intune-deviceconfig-configurationusage.md)|Indicates if TPM startup key is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`, `notConfigured`.|
|startupAuthenticationTpmPinAndKeyUsage|[configurationUsage](../resources/intune-deviceconfig-configurationusage.md)|Indicates if TPM startup pin key and key are allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`, `notConfigured`.|
|minimumPinLength|Int32|Indicates the minimum length of startup pin. Valid values 4 to 20|
|recoveryOptions|[bitLockerRecoveryOptions](../resources/intune-deviceconfig-bitlockerrecoveryoptions.md)|Allows to recover BitLocker encrypted operating system drives in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.|
|prebootRecoveryEnableMessageAndUrl|Boolean|Enable pre-boot recovery message and Url. If requireStartupAuthentication is false, this value does not affect.|
|prebootRecoveryMessage|String|Defines a custom recovery message.|
|prebootRecoveryUrl|String|Defines a custom recovery URL.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bitLockerSystemDrivePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitLockerSystemDrivePolicy",
  "encryptionMethod": "String",
  "startupAuthenticationRequired": true,
  "startupAuthenticationBlockWithoutTpmChip": true,
  "startupAuthenticationTpmUsage": "String",
  "startupAuthenticationTpmPinUsage": "String",
  "startupAuthenticationTpmKeyUsage": "String",
  "startupAuthenticationTpmPinAndKeyUsage": "String",
  "minimumPinLength": 1024,
  "recoveryOptions": {
    "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
    "blockDataRecoveryAgent": true,
    "recoveryPasswordUsage": "String",
    "recoveryKeyUsage": "String",
    "hideRecoveryOptions": true,
    "enableRecoveryInformationSaveToStore": true,
    "recoveryInformationToStore": "String",
    "enableBitLockerAfterRecoveryInformationToStore": true
  },
  "prebootRecoveryEnableMessageAndUrl": true,
  "prebootRecoveryMessage": "String",
  "prebootRecoveryUrl": "String"
}
```




