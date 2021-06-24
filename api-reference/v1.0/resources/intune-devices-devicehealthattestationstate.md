---
title: "deviceHealthAttestationState resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthAttestationState resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastUpdateDateTime|String|The Timestamp of the last update.|
|contentNamespaceUrl|String|The DHA report version. (Namespace version)|
|deviceHealthAttestationStatus|String|The DHA report version. (Namespace version)|
|contentVersion|String|The HealthAttestation state schema version|
|issuedDateTime|DateTimeOffset|The DateTime when device was evaluated or issued to MDM|
|attestationIdentityKey|String|TWhen an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate.|
|resetCount|Int64|The number of times a PC device has hibernated or resumed|
|restartCount|Int64|The number of times a PC device has rebooted|
|dataExcutionPolicy|String|DEP Policy defines a set of hardware and software technologies that perform additional checks on memory |
|bitLockerStatus|String|On or Off of BitLocker Drive Encryption|
|bootManagerVersion|String|The version of the Boot Manager|
|codeIntegrityCheckVersion|String|The version of the Boot Manager|
|secureBoot|String|When Secure Boot is enabled, the core components must have the correct cryptographic signatures|
|bootDebugging|String|When bootDebugging is enabled, the device is used in development and testing|
|operatingSystemKernelDebugging|String|When operatingSystemKernelDebugging is enabled, the device is used in development and testing|
|codeIntegrity|String| When code integrity is enabled, code execution is restricted to integrity verified code|
|testSigning|String|When test signing is allowed, the device does not enforce signature validation during boot|
|safeMode|String|Safe mode is a troubleshooting option for Windows that starts your computer in a limited state|
|windowsPE|String|Operating system running with limited services that is used to prepare a computer for Windows|
|earlyLaunchAntiMalwareDriverProtection|String|ELAM provides protection for the computers in your network when they start up|
|virtualSecureMode|String|VSM is a container that protects high value assets from a compromised kernel|
|pcrHashAlgorithm|String|Informational attribute that identifies the HASH algorithm that was used by TPM|
|bootAppSecurityVersion|String|The security version number of the Boot Application|
|bootManagerSecurityVersion|String|The security version number of the Boot Application|
|tpmVersion|String|The security version number of the Boot Application|
|pcr0|String|The measurement that is captured in PCR\[0\]|
|secureBootConfigurationPolicyFingerPrint|String|Fingerprint of the Custom Secure Boot Configuration Policy|
|codeIntegrityPolicy|String|The Code Integrity policy that is controlling the security of the boot environment|
|bootRevisionListInfo|String|The Boot Revision List that was loaded during initial boot on the attested device|
|operatingSystemRevListInfo|String|The Operating System Revision List that was loaded during initial boot on the attested device|
|healthStatusMismatchInfo|String|This attribute appears if DHA-Service detects an integrity issue|
|healthAttestationSupportedStatus|String|This attribute indicates if DHA is supported for the device|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthAttestationState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthAttestationState",
  "lastUpdateDateTime": "String",
  "contentNamespaceUrl": "String",
  "deviceHealthAttestationStatus": "String",
  "contentVersion": "String",
  "issuedDateTime": "String (timestamp)",
  "attestationIdentityKey": "String",
  "resetCount": 1024,
  "restartCount": 1024,
  "dataExcutionPolicy": "String",
  "bitLockerStatus": "String",
  "bootManagerVersion": "String",
  "codeIntegrityCheckVersion": "String",
  "secureBoot": "String",
  "bootDebugging": "String",
  "operatingSystemKernelDebugging": "String",
  "codeIntegrity": "String",
  "testSigning": "String",
  "safeMode": "String",
  "windowsPE": "String",
  "earlyLaunchAntiMalwareDriverProtection": "String",
  "virtualSecureMode": "String",
  "pcrHashAlgorithm": "String",
  "bootAppSecurityVersion": "String",
  "bootManagerSecurityVersion": "String",
  "tpmVersion": "String",
  "pcr0": "String",
  "secureBootConfigurationPolicyFingerPrint": "String",
  "codeIntegrityPolicy": "String",
  "bootRevisionListInfo": "String",
  "operatingSystemRevListInfo": "String",
  "healthStatusMismatchInfo": "String",
  "healthAttestationSupportedStatus": "String"
}
```




