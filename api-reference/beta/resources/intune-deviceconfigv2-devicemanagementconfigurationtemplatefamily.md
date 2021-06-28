---
title: "deviceManagementConfigurationTemplateFamily enum type"
description: "Describes the TemplateFamily for the Template entity"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationTemplateFamily enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the TemplateFamily for the Template entity

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default for Template Family when Policy is not linked to a Template|
|endpointSecurityAntivirus|10|Template Family for EndpointSecurityAntivirus that manages the discrete group of antivirus settings for managed devices|
|endpointSecurityDiskEncryption|11|Template Family for EndpointSecurityDiskEncryption that provides settings that are relevant for a devices built-in encryption  method, like FileVault or BitLocker|
|endpointSecurityFirewall|12|Template Family for EndpointSecurityFirewall that helps configure a devices built-in firewall for device that run macOS and Windows 10|
|endpointSecurityEndpointDetectionAndResponse|13|Template Family for EndpointSecurityEndpointDectionAndResponse that facilitates management of the EDR settings and onboard devices to Microsoft Defender for Endpoint|
|endpointSecurityAttackSurfaceReduction|14|Template Family for EndpointSecurityAttackSurfaceReduction that help reduce your attack surfaces, by minimizing the places where your organization is vulnerable to cyberthreats and attacks|
|endpointSecurityAccountProtection|15|Template Family for EndpointSecurityAccountProtection that facilitates protecting the identity and accounts of users|
|endpointSecurityApplicationControl|16|Template Family for ApplicationControl that helps mitigate security threats by restricting the applications that users can run and the code that runs in the System Core (kernel)|




