# iosHomeScreenFolderPage resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A folder containing apps on the Home Screen
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the folder page|
|apps|[iosHomeScreenApp](../resources/intune_deviceconfig_ioshomescreenapp.md) collection|A list of apps to appear on a page within a folder. This collection can contain a maximum of 500 elements.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosHomeScreenFolderPage"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenFolderPage",
  "displayName": "String",
  "apps": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenApp",
      "displayName": "String",
      "bundleID": "String"
    }
  ]
}
```



