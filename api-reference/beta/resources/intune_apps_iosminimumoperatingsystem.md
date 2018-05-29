# iosMinimumOperatingSystem resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties of the minimum operating system required for an iOS mobile app.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Version 8.0 or later.|
|v9_0|Boolean|Version 9.0 or later.|
|v10_0|Boolean|Version 10.0 or later.|
|v11_0|Boolean|Version 11.0 or later.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosMinimumOperatingSystem",
  "v8_0": true,
  "v9_0": true,
  "v10_0": true,
  "v11_0": true
}
```



