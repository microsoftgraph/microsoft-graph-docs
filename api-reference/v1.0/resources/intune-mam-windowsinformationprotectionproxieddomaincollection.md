---
title: "windowsInformationProtectionProxiedDomainCollection resource type"
description: "Windows Information Protection Proxied Domain Collection"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsInformationProtectionProxiedDomainCollection resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Information Protection Proxied Domain Collection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name|
|proxiedDomains|[proxiedDomain](../resources/intune-mam-proxieddomain.md) collection|Collection of proxied domains|

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




