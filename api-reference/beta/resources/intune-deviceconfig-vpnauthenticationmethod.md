---
title: "vpnAuthenticationMethod enum type"
description: "VPN Authentication Method."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# vpnAuthenticationMethod enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN Authentication Method.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Authenticate with a certificate.|
|usernameAndPassword|1|Use username and password for authentication.|
|sharedSecret|2|Use Shared Secret for Authentication.  Only valid for iOS IKEv2.|
|derivedCredential|3|Use Derived Credential for Authentication.|



