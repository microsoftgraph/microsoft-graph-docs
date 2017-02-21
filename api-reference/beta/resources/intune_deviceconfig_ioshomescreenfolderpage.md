# iosHomeScreenFolderPage resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A folder containing apps on the Home Screen
## Properties
|Property|Type|Description|
|---|---|---|
|apps|[iosHomeScreenApp](../resources/intune_deviceconfig_ioshomescreenapp.md) collection|A list of apps to appear on a page within a folder|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosHomeScreenFolderPage"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenFolderPage",
  "apps": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenApp",
      "displayName": "String",
      "bundleID": "String"
    }
  ]
}
```



