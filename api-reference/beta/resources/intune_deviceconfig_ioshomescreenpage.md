# iosHomeScreenPage resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A page containing apps and folders on the Home Screen
## Properties
|Property|Type|Description|
|---|---|---|
|icons|[iosHomeScreenItem](../resources/intune_deviceconfig_ioshomescreenitem.md) collection|A list of apps and folders to appear on a page|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosHomeScreenPage"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosHomeScreenPage",
  "icons": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenItem",
      "displayName": "String"
    }
  ]
}
```



