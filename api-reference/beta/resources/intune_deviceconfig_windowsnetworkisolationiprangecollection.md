# windowsNetworkIsolationIPRangeCollection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Network Isolation IPRange Collection
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the network isolation IP ranges|
|ranges|[ipRange](../resources/intune_deviceconfig_iprange.md) collection|A list of IP ranges. This collection can contain a maximum of 500 elements.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsNetworkIsolationIPRangeCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsNetworkIsolationIPRangeCollection",
  "displayName": "String",
  "ranges": [
    {
      "@odata.type": "microsoft.graph.iPv6Range",
      "lowerAddress": "String",
      "upperAddress": "String"
    }
  ]
}
```



