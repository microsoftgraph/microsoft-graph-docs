# windows10NetworkProxyServer resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

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
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows10NetworkProxyServer"
}-->
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



