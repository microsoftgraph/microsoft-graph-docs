---
title: "windowsInformationProtectionProxiedDomainCollection resource type"
description: "Windows Information Protection Proxied Domain Collection"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# windowsInformationProtectionProxiedDomainCollection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Proxied Domain Collection
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name|
|proxiedDomains|[proxiedDomain](../resources/intune-shared-proxieddomain.md) collection|Collection of proxied domains|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionProxiedDomainCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionProxiedDomainCollection",
  "displayName": "String",
  "proxiedDomains": [
    {
      "@odata.type": "microsoft.graph.proxiedDomain",
      "ipAddressOrFQDN": "String",
      "proxy": "String"
    }
  ]
}
```





