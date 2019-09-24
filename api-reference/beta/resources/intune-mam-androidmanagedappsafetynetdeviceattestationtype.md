---
title: "androidManagedAppSafetyNetDeviceAttestationType enum type"
description: "An admin enforced Android SafetyNet Device Attestation requirement on a managed app."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# androidManagedAppSafetyNetDeviceAttestationType enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An admin enforced Android SafetyNet Device Attestation requirement on a managed app.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|no requirement set|
|basicIntegrity|1|require that Android device passes SafetyNet Basic Integrity validation|
|basicIntegrityAndDeviceCertification|2|require that Android device passes SafetyNet Basic Integrity and Device Certification validations|



