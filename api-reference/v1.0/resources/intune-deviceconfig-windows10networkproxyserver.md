---
title: "windows10NetworkProxyServer resource type"
description: "Network Proxy Server Policy."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windows10NetworkProxyServer resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Network Proxy Server Policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|String|Address to the proxy server. Specify an address in the format <server>\[“:”<port>\]|
|exceptions|String collection|Addresses that should not use the proxy server. The system will not use the proxy server for addresses beginning with what is specified in this node.|
|useForLocalAddresses|Boolean|Specifies whether the proxy server should be used for local (intranet) addresses.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows10NetworkProxyServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10NetworkProxyServer",
  "address": "String",
  "exceptions": [
    "String"
  ],
  "useForLocalAddresses": true
}
```




