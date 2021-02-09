---
title: "windowsNetworkIsolationPolicy resource type"
description: "Windows Network Isolation Policy"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsNetworkIsolationPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Network Isolation Policy

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enterpriseNetworkDomainNames|String collection|This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to.|
|enterpriseCloudResources|[proxiedDomain](../resources/intune-shared-proxieddomain.md) collection|Contains a list of enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy. This collection can contain a maximum of 500 elements.|
|enterpriseIPRanges|[ipRange](../resources/intune-shared-iprange.md) collection|Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This collection can contain a maximum of 500 elements.|
|enterpriseInternalProxyServers|String collection|This is the comma-separated list of internal proxy servers. For example, "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseCloudResources policy to force traffic to the matched cloud resources through these proxies.|
|enterpriseIPRangesAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false.|
|enterpriseProxyServers|String collection|This is a list of proxy servers. Any server not on this list is considered non-enterprise.|
|enterpriseProxyServersAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false|
|neutralDomainResources|String collection|List of domain names that can used for work or personal resource.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationPolicy",
  "enterpriseNetworkDomainNames": [
    "String"
  ],
  "enterpriseCloudResources": [
    {
      "@odata.type": "microsoft.graph.proxiedDomain",
      "ipAddressOrFQDN": "String",
      "proxy": "String"
    }
  ],
  "enterpriseIPRanges": [
    {
      "@odata.type": "microsoft.graph.ipRange"
    }
  ],
  "enterpriseInternalProxyServers": [
    "String"
  ],
  "enterpriseIPRangesAreAuthoritative": true,
  "enterpriseProxyServers": [
    "String"
  ],
  "enterpriseProxyServersAreAuthoritative": true,
  "neutralDomainResources": [
    "String"
  ]
}
```




