# windowsNetworkIsolationPolicy resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Network Isolation Policy
## Properties
|Property|Type|Description|
|:---|:---|:---|
|enterpriseNetworkDomainNames|[windowsNetworkIsolationResourceCollection](../resources/intune_deviceconfig_windowsnetworkisolationresourcecollection.md)|This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to.|
|enterpriseCloudResources|[windowsNetworkIsolationCloudResourceCollection](../resources/intune_deviceconfig_windowsnetworkisolationcloudresourcecollection.md)|Contains a list of enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy.|
|enterpriseIPRanges|[windowsNetworkIsolationIPRangeCollection](../resources/intune_deviceconfig_windowsnetworkisolationiprangecollection.md)|Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to.|
|enterpriseInternalProxyServers|[windowsNetworkIsolationResourceCollection](../resources/intune_deviceconfig_windowsnetworkisolationresourcecollection.md)|This is the comma-separated list of internal proxy servers. For example, "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseCloudResources policy to force traffic to the matched cloud resources through these proxies.|
|enterpriseIPRangesAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false.|
|enterpriseProxyServers|[windowsNetworkIsolationResourceCollection](../resources/intune_deviceconfig_windowsnetworkisolationresourcecollection.md)|This is a list of proxy servers. Any server not on this list is considered non-enterprise.|
|enterpriseProxyServersAreAuthoritative|Boolean|Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false|
|neutralDomainResources|[windowsNetworkIsolationResourceCollection](../resources/intune_deviceconfig_windowsnetworkisolationresourcecollection.md)|List of domain names that can used for work or personal resource.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationPolicy",
  "enterpriseNetworkDomainNames": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationResourceCollection",
    "displayName": "String",
    "resources": [
      "String"
    ]
  },
  "enterpriseCloudResources": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationCloudResourceCollection",
    "displayName": "String",
    "resources": [
      {
        "@odata.type": "microsoft.graph.windowsNetworkIsolationCloudResource",
        "ipAddressOrFQDN": "String",
        "proxy": "String"
      }
    ]
  },
  "enterpriseIPRanges": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationIPRangeCollection",
    "displayName": "String",
    "ranges": [
      {
        "@odata.type": "microsoft.graph.iPv6Range",
        "lowerAddress": "String",
        "upperAddress": "String"
      }
    ]
  },
  "enterpriseInternalProxyServers": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationResourceCollection",
    "displayName": "String",
    "resources": [
      "String"
    ]
  },
  "enterpriseIPRangesAreAuthoritative": true,
  "enterpriseProxyServers": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationResourceCollection",
    "displayName": "String",
    "resources": [
      "String"
    ]
  },
  "enterpriseProxyServersAreAuthoritative": true,
  "neutralDomainResources": {
    "@odata.type": "microsoft.graph.windowsNetworkIsolationResourceCollection",
    "displayName": "String",
    "resources": [
      "String"
    ]
  }
}
```



