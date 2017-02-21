# iosHomeScreenApp resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents an icon for an app on the Home Screen

Inherits from [iosHomeScreenItem](../resources/intune_deviceconfig_ioshomescreenitem.md)

## Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Name of Application or Folder (optional) Inherited from [iosHomeScreenItem](../resources/intune_deviceconfig_ioshomescreenitem.md)|
|bundleID|String|BundleID of app|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosHomeScreenApp"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenApp",
  "displayName": "String",
  "bundleID": "String"
}
```



