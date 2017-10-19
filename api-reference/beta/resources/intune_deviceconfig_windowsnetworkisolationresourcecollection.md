# windowsNetworkIsolationResourceCollection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Network Isolation Resource Collection
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the network isolation resource collection|
|resources|String collection|List of network isolation resources, each resource can be an IP address or a domain name|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationResourceCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationResourceCollection",
  "displayName": "String",
  "resources": [
    "String"
  ]
}
```



