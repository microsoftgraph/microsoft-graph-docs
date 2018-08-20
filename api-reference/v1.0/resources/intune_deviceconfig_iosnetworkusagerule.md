# iosNetworkUsageRule resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Network Usage Rules allow enterprises to specify how managed apps use networks, such as cellular data networks.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedApps|[appListItem](../resources/intune_deviceconfig_applistitem.md) collection|Information about the managed apps that this rule is going to apply to. This collection can contain a maximum of 500 elements.|
|cellularDataBlockWhenRoaming|Boolean|If set to true, corresponding managed apps will not be allowed to use cellular data when roaming.|
|cellularDataBlocked|Boolean|If set to true, corresponding managed apps will not be allowed to use cellular data at any time.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosNetworkUsageRule"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.iosNetworkUsageRule",
  "managedApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "cellularDataBlockWhenRoaming": true,
  "cellularDataBlocked": true
}
```



