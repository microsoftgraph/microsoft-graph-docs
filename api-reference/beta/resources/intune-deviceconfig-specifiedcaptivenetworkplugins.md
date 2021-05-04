---
title: "specifiedCaptiveNetworkPlugins resource type"
description: "Specifies all the Captive network plugins allowed during the IKEv2 AlwaysOn VPN connection"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# specifiedCaptiveNetworkPlugins resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies all the Captive network plugins allowed during the IKEv2 AlwaysOn VPN connection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedBundleIdentifiers|String collection|Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.specifiedCaptiveNetworkPlugins"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.specifiedCaptiveNetworkPlugins",
  "allowedBundleIdentifiers": [
    "String"
  ]
}
```




