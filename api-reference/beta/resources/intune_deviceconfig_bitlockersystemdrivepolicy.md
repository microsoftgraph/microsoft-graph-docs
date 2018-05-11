# bitLockerSystemDrivePolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

BitLocker Encryption Base Policies.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptionMethod|[bitLockerEncryptionMethod](../resources/intune_deviceconfig_bitlockerencryptionmethod.md)|Select the encryption method for operating system drives. Possible values are: `aesCbc128`, `aesCbc256`, `xtsAes128`, `xtsAes256`.|
|startupAuthenticationRequired|Boolean|Require additional authentication at startup.|
|startupAuthenticationBlockWithoutTpmChip|Boolean|Indicates whether to allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).|
|startupAuthenticationTpmUsage|[configurationUsage](../resources/intune_deviceconfig_configurationusage.md)|Indicates if TPM startup is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`.|
|startupAuthenticationTpmPinUsage|[configurationUsage](../resources/intune_deviceconfig_configurationusage.md)|Indicates if TPM startup pin is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`.|
|startupAuthenticationTpmKeyUsage|[configurationUsage](../resources/intune_deviceconfig_configurationusage.md)|Indicates if TPM startup key is allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`.|
|startupAuthenticationTpmPinAndKeyUsage|[configurationUsage](../resources/intune_deviceconfig_configurationusage.md)|Indicates if TPM startup pin key and key are allowed/required/disallowed. Possible values are: `blocked`, `required`, `allowed`.|
|minimumPinLength|Int32|Indicates the minimum length of startup pin. Valid values 4 to 20|
|recoveryOptions|[bitLockerRecoveryOptions](../resources/intune_deviceconfig_bitlockerrecoveryoptions.md)|Allows to recover BitLocker encrypted operating system drives in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.|
|prebootRecoveryEnableMessageAndUrl|Boolean|Enable pre-boot recovery message and Url. If requireStartupAuthentication is false, this value does not affect.|
|prebootRecoveryMessage|String|Defines a custom recovery message.|
|prebootRecoveryUrl|String|Defines a custom recovery URL.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
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



