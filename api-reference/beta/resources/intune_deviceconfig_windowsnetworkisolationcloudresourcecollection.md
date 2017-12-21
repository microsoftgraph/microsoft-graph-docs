# windowsNetworkIsolationCloudResourceCollection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Network Isolation Cloud Resource Collection
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the network isolation cloud resource collection|
|resources|[windowsNetworkIsolationCloudResource](../resources/intune_deviceconfig_windowsnetworkisolationcloudresource.md) collection|List of network isolation cloud resources. This collection can contain a maximum of 500 elements.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationCloudResourceCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationCloudResourceCollection",
  "displayName": "String",
  "resources": [
    {
      "@odata.type": "microsoft.graph.windowsNetworkIsolationCloudResource",
      "ipAddressOrFQDN": "String",
      "proxy": "String"
    }
  ]
}
```



