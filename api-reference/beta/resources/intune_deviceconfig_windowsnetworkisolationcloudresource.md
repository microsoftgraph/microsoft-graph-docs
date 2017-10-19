# windowsNetworkIsolationCloudResource resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Network Isolation Cloud Resource
## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddressOrFQDN|String|The IP address or FQDN for a network isolation cloud resource|
|proxy|String|The proxy server that this cloud resource’s traffic will be forced to|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationCloudResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationCloudResource",
  "ipAddressOrFQDN": "String",
  "proxy": "String"
}
```



