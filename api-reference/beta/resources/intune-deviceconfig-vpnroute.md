---
title: "vpnRoute resource type"
description: "VPN Route definition."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# vpnRoute resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN Route definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinationPrefix|String|Destination prefix (IPv4/v6 address).|
|prefixSize|Int32|Prefix size. (1-32). Valid values 1 to 32|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vpnRoute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.vpnRoute",
  "destinationPrefix": "String",
  "prefixSize": 1024
}
```




