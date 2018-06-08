# vppLicensingType resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties for iOS Volume-Purchased Program (Vpp) Licensing Type.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|supportsUserLicensing|Boolean|Whether the program supports the user licensing type.|
|supportsDeviceLicensing|Boolean|Whether the program supports the device licensing type.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.vppLicensingType"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.vppLicensingType",
  "supportsUserLicensing": true,
  "supportsDeviceLicensing": true
}
```



